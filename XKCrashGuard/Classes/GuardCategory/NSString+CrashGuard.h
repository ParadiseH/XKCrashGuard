//
//  NSString+CrashGuard.h
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CrashGuard)

- (BOOL)cg_hasPrefix:(NSString *)str;
- (BOOL)cg_hasSuffix:(NSString *)str;
- (unichar)cg_characterAtIndex:(NSUInteger)index;
- (NSString *)cg_substringWithRange:(NSRange)range;

@end

@interface NSMutableString (CrashGuard)

- (BOOL)cg_hasPrefix:(NSString *)str;
- (BOOL)cg_hasSuffix:(NSString *)str;
- (void)cg_appendString:(NSString *)aString;
- (void)cg_setString:(NSString *)aString;
- (void)cg_insertString:(NSString *)aString atIndex:(NSUInteger)loc;
- (NSUInteger)cg_replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;

@end
