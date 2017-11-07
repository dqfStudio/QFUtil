//
//  UIView+QFUtil.h
//  MeTa
//
//  Created by dqf on 2017/8/29.
//  Copyright © 2017年 hisun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import "UIScreen+QFUtil.h"
#import "UIGestureRecognizer+QFUtil.h"
#import "Masonry.h"

@interface UIView (QFUtil)

#pragma mark - Init

/**
 *  根据nib name返回UIView
 */
+ (instancetype)viewWithNibName:(NSString *)name;

/**
 *  根据nib创建一个view，nib name为ClassName
 */
+ (instancetype)viewFromNib;

#pragma mark - Frame

@property (nonatomic, readwrite) CGFloat x;
@property (nonatomic, readwrite) CGFloat y;
@property (nonatomic, readwrite) CGFloat width;
@property (nonatomic, readwrite) CGFloat height;


@property (nonatomic, readwrite) CGPoint origin;
@property (nonatomic, readwrite) CGSize  size;


@property (nonatomic, readwrite) CGFloat centerX;
@property (nonatomic, readwrite) CGFloat centerY;


@property (nonatomic, readonly)  CGFloat  minX;
@property (nonatomic, readonly)  CGFloat  minY;


@property (nonatomic, readonly)  CGFloat  midX;
@property (nonatomic, readonly)  CGFloat  midY;


@property (nonatomic, readonly)  CGFloat  maxX;
@property (nonatomic, readonly)  CGFloat  maxY;



@property (nonatomic, readwrite) CGFloat x_yy;
@property (nonatomic, readwrite) CGFloat y_yy;
@property (nonatomic, readwrite) CGFloat width_yy;
@property (nonatomic, readwrite) CGFloat height_yy;


@property (nonatomic, readwrite) CGPoint origin_yy;
@property (nonatomic, readwrite) CGSize  size_yy;


@property (nonatomic, readwrite) CGFloat centerX_yy;
@property (nonatomic, readwrite) CGFloat centerY_yy;


@property (nonatomic, readonly)  CGFloat  minX_yy;
@property (nonatomic, readonly)  CGFloat  minY_yy;


@property (nonatomic, readonly)  CGFloat  midX_yy;
@property (nonatomic, readonly)  CGFloat  midY_yy;


@property (nonatomic, readonly)  CGFloat  maxX_yy;
@property (nonatomic, readonly)  CGFloat  maxY_yy;

/**
 *  根据传入的width来水平居中
 */
- (void)horizontalCenterWithWidth:(CGFloat)width;

/**
 *  根据传入的height来竖直居中
 */
- (void)verticalCenterWithHeight:(CGFloat)height;

- (void)verticalCenterInSuperView;
- (void)horizontalCenterInSuperView;

#pragma mark - Tap Gesture

/**
 *  添加点击事件，多次调用会持有多个UITapGestureRecognizer对象
 */
- (UITapGestureRecognizer *)addSingleTapGestureWithBlock:(void (^)(UITapGestureRecognizer *recognizer))block;
/**
 *  添加双击事件
 */
- (UITapGestureRecognizer *)addDoubleTapGestureWithBlock:(void (^)(UITapGestureRecognizer *recognizer))block;

/**
 *  添加单击事件，多次调用只会持有一个UITapGestureRecognizer对象，之前的会被清除
 */
- (UITapGestureRecognizer *)setSingleTapGestureWithBlock:(void (^)(UITapGestureRecognizer *recognizer))block;
- (UITapGestureRecognizer *)setSingleTapGestureTarget:(id)target action:(SEL)action;

#pragma mark - Top and bottom line

/**
 *  添加一个SubLayer
 */
- (CALayer *)addSubLayerWithFrame:(CGRect)frame color:(UIColor *)color;

/**
 *  设置UIView的顶部和底部边线，一般用在设置界面
 */

@property (nonatomic, strong) CALayer *topLineLayer;
@property (nonatomic, strong) CALayer *bottomLineLayer;

- (void)setTopFillLineWithColor:(UIColor *)color;
- (void)setTopLineWithColor:(UIColor *)color paddingLeft:(CGFloat)paddingLeft paddingRight:(CGFloat)paddingRight;
- (void)setBottomFillLineWithColor:(UIColor *)color;
- (void)setBottomLineWithColor:(UIColor *)color paddingLeft:(CGFloat)paddingLeft paddingRight:(CGFloat)paddingRight;
- (void)setTopAndBottomLineWithColor:(UIColor *)color;

/**
 *  设置UIView的顶部和底部边线，一般用在设置界面，当界面采用AutoLayout时使用
 */
- (UIView *)setTopLineViewWithColor:(UIColor *)color paddingLeft:(CGFloat)left paddingRight:(CGFloat)right;
- (UIView *)setBottomLineViewWithColor:(UIColor *)color paddingLeft:(CGFloat)left paddingRight:(CGFloat)right;
- (UIView *)addSubviewWithColor:(UIColor *)color constraints:(void(^)(MASConstraintMaker *make))block;

#pragma mark - other

@property (nonatomic, strong) id userInfo;

/**
 *  返回它所在的ViewController
 */
- (UIViewController *)viewController;

/**
 *  设置边框宽度和颜色
 */
- (void)setBoarderWith:(CGFloat)width color:(UIColor *)color;

/**
 *  设置圆角
 */
@property (nonatomic, assign) CGFloat cornerRadius;

/**
 *  主要用于UITableView，UIScrollView，UICollectionView等列表类的View，
 *  在数据为空时，显示一个提示性的图像和文字
 */
- (void)setTipsViewWithImageName:(NSString *)imageName
                            text:(NSString *)text
                       textColor:(UIColor *)textColor;
- (void)removeTipsView;


//设置视图上边角幅度
- (void)setCornerRadiiOnTop:(CGFloat)radii;
//设置视图下边角幅度
- (void)setCornerRadiiOnBottom:(CGFloat)radii;
//设置指定角的角幅度
- (void)setGivenCorner:(UIRectCorner)corners cornerRadii:(CGFloat)radii;
//设置视图所有角幅度
- (void)setAllCornerRadii:(CGFloat)radii;
//去掉视图所有角幅度
- (void)setNoneCorner;


/**
 *  生成快照图像
 */
- (UIImage *)snapshotImage;
- (UIImage *)snapshotImageWithFrame:(CGRect)frame;

/**
 *  生成快照PDF
 */
- (NSData *)snapshotPDF;

@end
