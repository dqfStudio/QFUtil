//
//  UIView+QFUtil.m
//  MeTa
//
//  Created by dqf on 2017/8/29.
//  Copyright © 2017年 hisun. All rights reserved.
//

#import "UIView+QFUtil.h"
#import <objc/runtime.h>
#import "UIScreen+QFUtil.h"

static const void *userInfoAddress = &userInfoAddress;

@implementation UIView (QFUtil)

- (CGFloat)x {
    return self.frame.origin.x;
}
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}
- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}
- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}






- (CGFloat)sx {
    return self.frame.origin.x*KWRatio;
}
- (void)setSx:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x*KWRatio;
    self.frame = frame;
}

- (CGFloat)sy {
    return self.frame.origin.y*KWRatio;
}
- (void)setSy:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y*KWRatio;
    self.frame = frame;
}

- (CGFloat)swidth {
    return self.frame.size.width*KWRatio;
}
- (void)setSwidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width*KWRatio;
    self.frame = frame;
}

- (CGFloat)sheight {
    return self.frame.size.height*KWRatio;
}
- (void)setSheight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height*KWRatio;
    self.frame = frame;
}





- (CGPoint)origin {
    return self.frame.origin;
}
- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}
- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGFloat)centerX {
    return self.center.x;
}
- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
    return self.center.y;
}
- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)minX {
    return CGRectGetMinX(self.frame);
}
- (CGFloat)minY {
    return CGRectGetMinY(self.frame);
}

- (CGFloat)midX {
    return CGRectGetMidX(self.frame);
}
- (CGFloat)midY {
    return CGRectGetMidY(self.frame);
}

- (CGFloat)maxX {
    return CGRectGetMaxX(self.frame);
}
- (CGFloat)maxY {
    return CGRectGetMaxY(self.frame);
}






- (id)userInfo {
    return objc_getAssociatedObject(self, userInfoAddress);
}

- (void)setUserInfo:(id)userInfo {
    objc_setAssociatedObject(self, userInfoAddress, userInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)addTarget:(id)target action:(SEL)action {
    [self setUserInteractionEnabled:YES];
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tapGesture];
}

@end
