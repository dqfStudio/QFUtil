//
//  UIFont+QFChain.m
//  TestProject
//
//  Created by dqf on 2017/11/8.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "UIFont+Util.h"
#import <objc/runtime.h>

@implementation UIFont (QFChain)

+ (UIFont *(^)(CGFloat size))sysFont {
    return ^UIFont *(CGFloat size) {
        return [UIFont systemFontOfSize:size];
    };
}

+ (UIFont *(^)(CGFloat size))boldFont {
    return ^UIFont *(CGFloat size) {
        return [UIFont boldSystemFontOfSize:size];
    };
}

@end
