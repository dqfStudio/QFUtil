//
//  AppDelegate+QFDebug.m
//  MGMobileMusic
//
//  Created by dqf on 2017/7/20.
//  Copyright © 2017年 migu. All rights reserved.
//

#import "AppDelegate+QFDebug.h"
#import "QFDebugUtil.h"

@implementation AppDelegate (QFDebug)

#if DEBUG
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    CGPoint location = [[[event allTouches] anyObject] locationInView:[self window]];
    CGRect statusBarFrame = [UIApplication sharedApplication].statusBarFrame;
    if (CGRectContainsPoint(statusBarFrame, location)) {
        [[QFDebugUtil share] showDebugView];
    }
}
#endif

@end
