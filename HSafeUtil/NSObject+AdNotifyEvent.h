//
//  NSObject+AdNotifyEvent.h
//  TestProject
//
//  Created by dqf on 2017/9/30.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HObserverAssociater.h"

@interface NSObject (AdNotifyEvent)
- (void)HWatchObject:(id)object eventName:(NSString *)event block:(HNotifyBlock)block;
- (void)HWatchObject:(id)object eventName:(NSString *)event level:(double)level block:(HNotifyBlock)block;
@end


