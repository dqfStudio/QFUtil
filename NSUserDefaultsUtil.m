//
//  NSUserDefaultsUtil.m
//  MeTa
//
//  Created by dqf on 2017/8/29.
//  Copyright © 2017年 hisun. All rights reserved.
//

#import "NSUserDefaultsUtil.h"

#define KUserDefaultsKey       @"user_defaults_id"
#define KUserFirstLaunchKey    @"user_first_launch"
#define KUserLoginKey          @"user_login"

@implementation NSUserDefaults (Util)

+ (void)setUserIdentity:(NSString *)objc {
    if (objc) {
        [[NSUserDefaults standardUserDefaults] setObject:objc forKey:KUserDefaultsKey];
    }
}

+ (nullable id)getUserIdentity {
    return [[NSUserDefaults standardUserDefaults] objectForKey:KUserDefaultsKey];
}

+ (nullable instancetype)theCUserDefaults {
    NSString *userKey = [[NSUserDefaults standardUserDefaults] objectForKey:KUserDefaultsKey];
    if (userKey) {
        return [[NSUserDefaults alloc] initWithSuiteName:userKey];
    }
    return nil;
}

+ (void)setUserFirstLaunch {
    [[NSUserDefaults theCUserDefaults] setBool:YES forKey:KUserFirstLaunchKey];
}

+ (BOOL)isUserFirstLaunch {
    return [[NSUserDefaults theCUserDefaults] boolForKey:KUserFirstLaunchKey];
}

+ (void)setUserLogin {
    [[NSUserDefaults theCUserDefaults] setBool:YES forKey:KUserLoginKey];
}

+ (void)setUserLogout {
    [[NSUserDefaults theCUserDefaults] setBool:NO forKey:KUserLoginKey];
}

+ (BOOL)isUserLogIn {
    return [[NSUserDefaults theCUserDefaults] boolForKey:KUserLoginKey];
}

@end
