//
//  NSUserDefaults+QFUtil.m
//  MeTa
//
//  Created by dqf on 2017/8/29.
//  Copyright © 2017年 hisun. All rights reserved.
//

#import "NSUserDefaults+QFUtil.h"

#define KUserDefaultsKey       @"ud_user_defaults_id"
#define KFirstLaunchKey        @"ud_first_launch"
#define KUserFirstLaunchKey    @"ud_user_first_launch"
#define KUserLoginKey          @"ud_user_login"

@implementation NSUserDefaults (QFUtil)

+ (void)setUserIdentity:(NSString *)objc {
    if (objc) [[NSUserDefaults standardUserDefaults] setObject:objc forKey:KUserDefaultsKey];
}

+ (nullable id)getUserIdentity {
    return [[NSUserDefaults standardUserDefaults] objectForKey:KUserDefaultsKey];
}

+ (nullable instancetype)theCUserDefaults {
    NSString *userKey = [[NSUserDefaults standardUserDefaults] objectForKey:KUserDefaultsKey];
    if (userKey) return [[NSUserDefaults alloc] initWithSuiteName:userKey];
    return nil;
}

+ (void)setFirstLaunch {
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:KFirstLaunchKey];
}

+ (BOOL)isFirstLaunch {
    return [[NSUserDefaults standardUserDefaults] boolForKey:KFirstLaunchKey];
}

+ (void)setUserFirstLaunch {
    if ([NSUserDefaults theCUserDefaults]) {
        [[NSUserDefaults theCUserDefaults] setBool:YES forKey:KUserFirstLaunchKey];
    }
}

+ (BOOL)isUserFirstLaunch {
    if ([NSUserDefaults theCUserDefaults]) {
        return [[NSUserDefaults theCUserDefaults] boolForKey:KUserFirstLaunchKey];
    }
    return NO;
}

+ (void)setUserLogin {
    if ([NSUserDefaults theCUserDefaults]) {
        [[NSUserDefaults theCUserDefaults] setBool:YES forKey:KUserLoginKey];
    }
}

+ (void)setUserLogout {
    if ([NSUserDefaults theCUserDefaults]) {
        [[NSUserDefaults theCUserDefaults] setBool:NO forKey:KUserLoginKey];
    }
}

+ (BOOL)isUserLogIn {
    if ([NSUserDefaults theCUserDefaults]) {
        return [[NSUserDefaults theCUserDefaults] boolForKey:KUserLoginKey];
    }
    return NO;
}

@end
