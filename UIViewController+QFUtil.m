//
//  UIViewController+QFUtil.m
//  QFProj
//
//  Created by dqf on 2017/11/8.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "UIViewController+QFUtil.h"

@implementation UIViewController (QFUtil)

+ (instancetype)viewControllerFromNib {
    return [[self alloc] initWithNibName:NSStringFromClass([self class]) bundle:nil];
}

@end
