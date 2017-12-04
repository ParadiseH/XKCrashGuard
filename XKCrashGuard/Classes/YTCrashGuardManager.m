//
//  YTCrashGuardManager.m
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import "YTCrashGuardManager.h"
#import <objc/runtime.h>

#import "NSObject+Swizzling.h"
#import "NSArray+CrashGuard.h"
#import "NSDictionary+CrashGuard.h"
#import "NSString+CrashGuard.h"
#import "NSNumber+CrashGuard.h"

@implementation YTCrashGuardManager

#pragma mark - Life cycle

+ (void)load
{
	[YTCrashGuardManager sharedInstance];
}

+ (YTCrashGuardManager *)sharedInstance
{
	static YTCrashGuardManager *instance = nil;
	static dispatch_once_t once;
	dispatch_once(&once, ^{
		
		instance = [[YTCrashGuardManager alloc] init];
	});
	
	return instance;
}

- (instancetype)init
{
	if (self = [super init])
	{
		[self swizzleArrayMethod];
		[self swizzleDictionaryMethod];
		[self swizzleStringMethod];
		[self swizzleNumberMethod];
	}
	
	return self;
}

#pragma mark - Swizzle

- (void)swizzleArrayMethod
{
	/*** NSArray ***/
    [objc_getClass("__NSArrayI") swizzleMethod:@selector(objectAtIndex:) swizzleSelector:@selector(cg_objectAtIndex:) error:nil];
    [objc_getClass("__NSArrayI") swizzleMethod:@selector(arrayByAddingObject:) swizzleSelector:@selector(cg_arrayByAddingObject:) error:nil];

    [objc_getClass("__NSSingleObjectArrayI") swizzleMethod:@selector(objectAtIndex:) swizzleSelector:@selector(cg_objectAtIndexNSSingleObjectArrayI:) error:nil];
    [objc_getClass("__NSSingleObjectArrayI") swizzleMethod:@selector(arrayByAddingObject:) swizzleSelector:@selector(cg_arrayByAddingObjectNSSingleObjectArrayI:) error:nil];

    [objc_getClass("__NSArray0") swizzleMethod:@selector(objectAtIndex:) swizzleSelector:@selector(cg_objectAtIndexNSArray0:) error:nil];
    [objc_getClass("__NSArray0") swizzleMethod:@selector(arrayByAddingObject:) swizzleSelector:@selector(cg_arrayByAddingObjectNSArray0:) error:nil];

	/*** NSMutableArray ***/
	[objc_getClass("__NSArrayM") swizzleMethod:@selector(objectAtIndex:) swizzleSelector:@selector(cg_objectAtIndex:) error:nil];
	[objc_getClass("__NSArrayM") swizzleMethod:@selector(addObject:) swizzleSelector:@selector(cg_addObject:) error:nil];
	[objc_getClass("__NSArrayM") swizzleMethod:@selector(removeObjectAtIndex:) swizzleSelector:@selector(cg_removeObjectAtIndex:) error:nil];
	[objc_getClass("__NSArrayM") swizzleMethod:@selector(insertObject:atIndex:) swizzleSelector:@selector(cg_insertObject:atIndex:) error:nil];
	[objc_getClass("__NSArrayM") swizzleMethod:@selector(replaceObjectAtIndex:withObject:) swizzleSelector:@selector(cg_replaceObjectAtIndex:withObject:) error:nil];
}

- (void)swizzleDictionaryMethod
{
	/*** NSDictionary ***/
	[objc_getClass("__NSDictionaryI") swizzleMethod:@selector(setValue:forKey:)  swizzleSelector:@selector(cg_setValue:forKey:) error:nil];

	/*** NSMutableDictionary ***/
	[objc_getClass("__NSDictionaryM") swizzleMethod:@selector(setValue:forKey:)  swizzleSelector:@selector(cg_setValue:forKey:) error:nil];
	[objc_getClass("__NSDictionaryM") swizzleMethod:@selector(setObject:forKey:) swizzleSelector:@selector(cg_setObject:forKey:) error:nil];
}

- (void)swizzleStringMethod
{
	/*** NSString ***/
	[objc_getClass("__NSCFConstantString") swizzleMethod:@selector(hasPrefix:) swizzleSelector:@selector(cg_hasPrefix:) error:nil];
	[objc_getClass("__NSCFConstantString") swizzleMethod:@selector(hasSuffix:) swizzleSelector:@selector(cg_hasSuffix:) error:nil];
	[objc_getClass("__NSCFConstantString") swizzleMethod:@selector(characterAtIndex:) swizzleSelector:@selector(cg_characterAtIndex:) error:nil];
	[objc_getClass("__NSCFConstantString") swizzleMethod:@selector(substringWithRange:) swizzleSelector:@selector(cg_substringWithRange:) error:nil];

	/*** NSMutableString ***/
	[objc_getClass("__NSCFString") swizzleMethod:@selector(hasPrefix:) swizzleSelector:@selector(cg_hasPrefix:) error:nil];
	[objc_getClass("__NSCFString") swizzleMethod:@selector(hasSuffix:) swizzleSelector:@selector(cg_hasSuffix:) error:nil];
	[objc_getClass("__NSCFString") swizzleMethod:@selector(setString:) swizzleSelector:@selector(cg_setString:) error:nil];
	[objc_getClass("__NSCFString") swizzleMethod:@selector(appendString:) swizzleSelector:@selector(cg_appendString:) error:nil];
	[objc_getClass("__NSCFString") swizzleMethod:@selector(insertString:atIndex:) swizzleSelector:@selector(cg_insertString:atIndex:) error:nil];
	[objc_getClass("__NSCFString") swizzleMethod:@selector(replaceOccurrencesOfString:withString:options:range:) swizzleSelector:@selector(cg_replaceOccurrencesOfString:withString:options:range:) error:nil];
}

- (void)swizzleNumberMethod
{
	[objc_getClass("__NSCFNumber") swizzleMethod:@selector(isEqualToNumber:) swizzleSelector:@selector(cg_isEqualToNumber:) error:nil];
	[objc_getClass("__NSCFNumber") swizzleMethod:@selector(compare:) swizzleSelector:@selector(cg_compare:) error:nil];
}

@end
