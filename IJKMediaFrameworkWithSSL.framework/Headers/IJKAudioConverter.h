//
//  ASFSAudioDecoder.h
//  ASAudioEngine
//
//  Created by 袁航 on 2021/10/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/// 会根据输入文件和输出文件自动转换格式
/// 默认格式 mp3
/// 如果没有转换成功，输出的output 为输入的文件
///  只是转码，不会改变比特率等参数
@interface IJKAudioConverter : NSObject
- (void)convert:(NSURL *)inputFile completion:(void (^_Nullable)(NSURL * output))completion;
- (void)convert:(NSURL *)inputFile destination:(NSURL *_Nullable)destination completion:(void (^_Nullable)(NSURL * output))completion;
- (void)convert:(NSURL *)inputFile format:(NSString *_Nullable)format completion:(void (^_Nullable)(NSURL * output))completion;
- (void)convert:(NSURL *)inputFile destination:(NSURL *_Nullable)destination format:(NSString *_Nullable)format completion:(void (^_Nullable)(NSURL * output))completion;
- (void)stop;
@end

NS_ASSUME_NONNULL_END
