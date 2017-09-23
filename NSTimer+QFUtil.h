//
//  NSTimer+QFUtil.h
//  TestProject
//
//  Created by dqf on 2017/9/23.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (QFUtil)

+ (NSTimer *_Nullable)ext_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void(^_Nullable)(NSTimer * _Nonnull timer))block;

//恢复
- (void)resume;
//暂停
- (void)pause;

@end
