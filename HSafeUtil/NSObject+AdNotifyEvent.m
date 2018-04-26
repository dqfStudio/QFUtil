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
- (HObserverAssociater *)observerAssociater {
    HObserverAssociater *observerAssociater = (HObserverAssociater *)objc_getAssociatedObject(self, _cmd);
    if (observerAssociater == nil) {
        observerAssociater = [[HObserverAssociater alloc] initWithObserverObject:self];
        objc_setAssociatedObject(self, _cmd, observerAssociater, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return observerAssociater;
}
- (void)HWatchObject:(id)object eventName:(NSString *)event block:(HNotifyBlock)block {
    [[self observerAssociater] addNotifyEvent:event watchObject:object observerObject:self level:KEventLevelDefault block:block];
}
- (void)HWatchObject:(id)object eventName:(NSString *)event level:(double)level block:(HNotifyBlock)block {
    [[self observerAssociater] addNotifyEvent:event watchObject:object observerObject:self level:level block:block];
}
@end

