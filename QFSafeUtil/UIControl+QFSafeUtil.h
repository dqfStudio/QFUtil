//
//  UIControl+QFSafeUtil.h
//  TestProject
//
//  Created by dqf on 2017/9/30.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+QFSwizzleUtil.h"

@interface UIControl (QFSafeUtil)
@property (nonatomic, assign) NSTimeInterval timeInterval;
@end
