//
//  UIScreenUtil.m
//  MeTa
//
//  Created by dqf on 2017/8/29.
//  Copyright © 2017年 hisun. All rights reserved.
//

#import "UIScreenUtil.h"

@implementation UIScreen (Util)

+ (CGSize)size {
    return [UIScreen mainScreen].bounds.size;
}

+ (CGFloat)height {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)width {
    return [UIScreen mainScreen].bounds.size.width;
}

@end
