//
//  NSDictionary+CrashGuard.m
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import "NSDictionary+CrashGuard.h"

@implementation NSDictionary (CrashGuard)

- (void)cg_setValue:(id)value forKey:(NSString *)key
{
	if (value)
	{
		[self cg_setValue:value forKey:key];
	}
}

@end

@implementation NSMutableDictionary (CrashGuard)

- (void)cg_setValue:(id)value forKey:(NSString *)key
{
	if (value)
	{
		[self cg_setValue:value forKey:key];
	}
}

- (void)cg_setObject:(id)anObject forKey:(id<NSCopying>)aKey
{
	if (anObject)
	{
		[self cg_setObject:anObject forKey:aKey];
	}
}

@end
