//
//  QFDebugView.m
//  T4est
//
//  Created by dqf on 2017/7/19.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFDebugView.h"

@implementation QFDebugView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        UIImageView *imgView = [[UIImageView alloc] init];
        [imgView setFrame:self.frame];
        [imgView setImage:[UIImage imageNamed:@"qfLaunchImage.jpg"]];
        [self addSubview:imgView];
        
        _lineView = [[UIControl alloc] init];
        [_lineView setFrame:CGRectMake(0, CGRectGetHeight(self.frame)-40, CGRectGetWidth(self.frame), 40)];
        [_lineView setBackgroundColor:[UIColor colorWithWhite:1.0 alpha:0.35]];
        [self addSubview:_lineView];
    }
    return self;
}

@end
