//
//  NSObject+AdNotifyEvent.m
//  TestProject
//
//  Created by dqf on 2017/9/30.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSObject+AdNotifyEvent.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation NSObject (AdNotifyEvent)
- (QFObserverAssociater *)observerAssociater {
    QFObserverAssociater *observerAssociater = (QFObserverAssociater *)objc_getAssociatedObject(self, _cmd);
    if (observerAssociater == nil) {
        observerAssociater = [[QFObserverAssociater alloc] initWithObserverObject:self];
        objc_setAssociatedObject(self, _cmd, observerAssociater, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return observerAssociater;
}
- (void)QFWatchObject:(id)object eventName:(NSString *)event block:(QFNotifyBlock)block {
    [[self observerAssociater] addNotifyEvent:event watchObject:object observerObject:self level:KEventLevelDefault block:block];
}
- (void)QFWatchObject:(id)object eventName:(NSString *)event level:(double)level block:(QFNotifyBlock)block {
    [[self observerAssociater] addNotifyEvent:event watchObject:object observerObject:self level:level block:block];
}
@end

