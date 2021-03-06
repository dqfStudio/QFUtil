//
//  NSObject+BlockSEL.m
//  TestProject
//
//  Created by dqf on 2018/4/12.
//  Copyright © 2018年 dqfStudio. All rights reserved.
//

#import "NSObject+BlockSEL.h"
#import <objc/runtime.h>

@implementation NSObject (BlockSEL)

- (SEL)selectorBlock:(void (^)(id, id))block {
    if (!block) {
        [NSException raise:@"block can not be nil" format:@"%@ selectorBlock error", self];
    }
    NSString *selName = [NSString stringWithFormat:@"selector_%p:", block];
    SEL sel = NSSelectorFromString(selName);
    class_addMethod([self class], sel, (IMP)selectorImp, "v@:@");
    objc_setAssociatedObject(self, sel, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    return sel;
}

static void selectorImp(id self, SEL _cmd, id arg) {
    callback block = objc_getAssociatedObject(self, _cmd);
    __weak typeof(self) weakSelf = self;
    if (block) {
        block(weakSelf, arg);
    }
}

@end
