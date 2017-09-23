//
//  NSTimer+QFUtil.m
//  TestProject
//
//  Created by dqf on 2017/9/23.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSTimer+QFUtil.h"

@implementation NSTimer (QFUtil)

+ (NSTimer *)ext_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void(^)(NSTimer * _Nonnull timer))block {
    return [self scheduledTimerWithTimeInterval:interval
                                         target:self
                                       selector:@selector(ext_blockInvoke:)
                                       userInfo:[block copy]
                                        repeats:repeats];
}

+ (void)ext_blockInvoke:(NSTimer *)timer {
    void(^block)(NSTimer * _Nonnull timer) = timer.userInfo;
    if (block != NULL) {
        block(timer);
    }
}

- (void)resume {
    if (![self isValid]) return ;
    [self setFireDate:[NSDate date]];
}

- (void)pause {
    if (![self isValid]) return;
    [self setFireDate:[NSDate distantFuture]];
}

@end

