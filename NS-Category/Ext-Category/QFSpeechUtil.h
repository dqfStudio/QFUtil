//
//  QFSpeechUtil.h
//  TestSpeech
//
//  Created by dqf on 2017/10/9.
//  Copyright © 2017年 socool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFSpeechUtil : NSObject
+ (void)speechWords:(NSString *)words;
@end

@interface NSString (QFSpeechUtil)
- (void(^)(void))speech;
@end
