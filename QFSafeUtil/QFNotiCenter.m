//
//  QFNotiCenter.m
//  QFNotiCenter
//
//  Created by dqf on 2017/7/31.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFNotiCenter.h"

@interface QFNotiCenter ()
@property (nonatomic, strong) NSMutableDictionary *mutableDict;
@end

@implementation QFNotiCenter

- (NSMutableDictionary *)mutableDict {
    if (!_mutableDict) {
        _mutableDict = [NSMutableDictionary dictionary];
    }
    return _mutableDict;
}

+ (QFNotiCenter *)share {
    static QFNotiCenter *shareInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        shareInstance = [[self alloc] init];
    });
    return shareInstance;
}

+ (void)registerNoti:(NSString *)name callback:(void(^)(NSNotification * note))callback {
    if (name) {
        id observer = [[NSNotificationCenter defaultCenter] addObserverForName:name object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
            if (callback) {
                callback(note);
            }
        }];
        
        [[QFNotiCenter share].mutableDict setObject:observer forKey:name];
    }
}

+ (void)postNoti:(NSString *)name {
    if (name) {
        [self postNoti:name object:nil];
    }
}

+ (void)postNoti:(NSString *)name object:(id)anObject {
    if (name) {
        [[NSNotificationCenter defaultCenter] postNotificationName:name object:anObject];
    }
}

+ (void)removeNoti:(NSString *)name {
    if (name) {
        id observer = [[QFNotiCenter share].mutableDict objectForKey:name];
        if (observer) {
            [[NSNotificationCenter defaultCenter] removeObserver:observer];
            [[QFNotiCenter share].mutableDict removeObjectForKey:name];
        }
    }
}

@end
