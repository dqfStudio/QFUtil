//
//  QFDebugUtil.h
//  T4est
//
//  Created by dqf on 2017/7/19.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFDebugUtil : NSObject

+ (QFDebugUtil *)share;
- (void)showDebugView;
- (void)hideDebugView;

@end
