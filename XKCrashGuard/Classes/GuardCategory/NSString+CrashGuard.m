//
//  NSString+CrashGuard.m
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import "NSString+CrashGuard.h"

@implementation NSString (CrashGuard)

- (BOOL)cg_hasPrefix:(NSString *)str
{
	if (str == nil || [str isKindOfClass:[NSNull class]])
	{
		return NO;
	}
	return [self cg_hasPrefix:str];
}

- (BOOL)cg_hasSuffix:(NSString *)str
{
	if (str == nil  || [str isKindOfClass:[NSNull class]])
	{
		return NO;
	}
	return [self cg_hasSuffix:str];
}

- (unichar)cg_characterAtIndex:(NSUInteger)index
{
	if (index >= self.length) return 0;

	return [self cg_characterAtIndex:index];
}

- (NSString *)cg_substringWithRange:(NSRange)range
{
	if (range.location + range.length > self.length) return @"";
	
	return [self cg_substringWithRange:range];
}

@end

@implementation NSMutableString (CrashGuard)

- (BOOL)cg_hasPrefix:(NSString *)str
{
	if (str == nil || [str isKindOfClass:[NSNull class]])
	{
		return NO;
	}
	return [self cg_hasPrefix:str];
}

- (BOOL)cg_hasSuffix:(NSString *)str
{
	if (str == nil || [str isKindOfClass:[NSNull class]])
	{
		return NO;
	}
	return [self cg_hasSuffix:str];
}

- (void)cg_appendString:(NSString *)aString
{
	if (aString && [aString isKindOfClass:[NSString class]])
	{
		[self cg_appendString:aString];
	}
}

- (void)cg_setString:(NSString *)aString
{
	if (aString && [aString isKindOfClass:[NSString class]])
	{
		[self cg_setString:aString];
	}
}

- (void)cg_insertString:(NSString *)aString atIndex:(NSUInteger)loc
{
	if (loc > self.length) return;
	if (aString && [aString isKindOfClass:[NSString class]])
	{
		[self cg_insertString:aString atIndex:loc];
	}
}

- (NSUInteger)cg_replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange
{
	if (!target || !replacement || [target isKindOfClass:[NSNull class]] || [replacement isKindOfClass:[NSNull class]]) {
		return 0;
	}
	
	if (searchRange.location + searchRange.length > self.length){
		return 0;
	}

	return [self cg_replaceOccurrencesOfString:target withString:replacement options:options range:searchRange];
}

@end
