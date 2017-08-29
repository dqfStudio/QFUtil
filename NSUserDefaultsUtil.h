//
//  NSUserDefaultsUtil.h
//  MeTa
//
//  Created by dqf on 2017/8/29.
//  Copyright © 2017年 hisun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (Util)

+ (void)setUserIdentity:(NSString *_Nullable)objc;
+ (nullable id)getUserIdentity;
+ (nullable instancetype)theCUserDefaults;

+ (void)setUserFirstLaunch;
+ (BOOL)isUserFirstLaunch;

+ (void)setUserLogin;
+ (void)setUserLogout;
+ (BOOL)isUserLogIn;

@end
