//
//  QFSpeechUtil.m
//  TestSpeech
//
//  Created by dqf on 2017/10/9.
//  Copyright © 2017年 socool. All rights reserved.
//

#import "QFSpeechUtil.h"
#import <AVFoundation/AVFoundation.h>

@interface QFSpeechUtil ()
@property (nonatomic) AVSpeechSynthesizer *speechSynthesizer;
@end

@implementation QFSpeechUtil
+ (instancetype)share {
    static QFSpeechUtil *speechUtil = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        speechUtil = [[self alloc] init];
    });
    return speechUtil;
}
- (instancetype)init {
    self = [super init];
    if (self) {
        self.speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    }
    return self;
}
+ (void)speechWords:(NSString *)words {
    if (words.length > 0) {
        AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:words];
        utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"];
        [[QFSpeechUtil share].speechSynthesizer speakUtterance:utterance];
    }
}
@end

@implementation NSString (QFSpeechUtil)
- (void(^)(void))speech {
    return ^(void) {
        [QFSpeechUtil speechWords:self];
    };
}
@end
