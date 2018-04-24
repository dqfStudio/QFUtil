//
//  NSObject+AdNotifyEvent.h
//  TestProject
//
//  Created by dqf on 2017/9/30.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QFObserverAssociater.h"

@interface NSObject (AdNotifyEvent)
- (void)QFWatchObject:(id)object eventName:(NSString *)event block:(QFNotifyBlock)block;
- (void)QFWatchObject:(id)object eventName:(NSString *)event level:(double)level block:(QFNotifyBlock)block;
@end


