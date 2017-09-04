//
//  NSUserDefaultsUtil.m
//  MeTa
//
//  Created by dqf on 2017/8/29.
//  Copyright © 2017年 hisun. All rights reserved.
//

#import "NSUserDefaultsUtil.h"

#define KUserDefaultsKey       @"ud_user_defaults_id"
#define KUserFirstLaunchKey    @"ud_user_first_launch"
#define KUserLoginKey          @"ud_user_login"

@implementation NSUserDefaults (Util)

+ (void)setUserIdentity:(NSString *)objc {
    if (objc) {
        [[NSUserDefaults standardUserDefaults] setObject:objc forKey:KUserDefaultsKey];
    }
}

+ (nullable id)getUserIdentity {
    return [[NSUserDefaults standardUserDefaults] objectForKey:KUserDefaultsKey];
}

+ (nullable instancetype)theUserDefaults {
    NSString *userKey = [[NSUserDefaults standardUserDefaults] objectForKey:KUserDefaultsKey];
    if (userKey) {
        return [[NSUserDefaults alloc] initWithSuiteName:userKey];
    }
    return nil;
}

+ (void)setUserFirstLaunch {
    [[NSUserDefaults theUserDefaults] setBool:YES forKey:KUserFirstLaunchKey];
}

+ (BOOL)isUserFirstLaunch {
    return [[NSUserDefaults theUserDefaults] boolForKey:KUserFirstLaunchKey];
}

+ (void)setUserLogin {
    [[NSUserDefaults theUserDefaults] setBool:YES forKey:KUserLoginKey];
}

+ (void)setUserLogout {
    [[NSUserDefaults theUserDefaults] setBool:NO forKey:KUserLoginKey];
}

+ (BOOL)isUserLogIn {
    return [[NSUserDefaults theUserDefaults] boolForKey:KUserLoginKey];
}

@end
