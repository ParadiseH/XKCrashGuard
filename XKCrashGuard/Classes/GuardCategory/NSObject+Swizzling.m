//
//  NSObject+Swizzling.m
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import "NSObject+Swizzling.h"
#import <objc/runtime.h>

@implementation NSObject (Swizzling)

+ (BOOL)swizzleMethod:(SEL)originSelector swizzleSelector:(SEL)swizzleSelector error:(NSError *__autoreleasing *)error
{
	Method originMethod = class_getInstanceMethod(self, originSelector);
	if (!originMethod)
	{
		NSString *errorString = [NSString stringWithFormat:@"%@类没有找到 %@ 方法", NSStringFromClass([self class]), NSStringFromSelector(originSelector)];
		*error = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:-1 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:errorString, NSLocalizedDescriptionKey, nil]];
		return NO;
	}
	
	Method swizzleMethod = class_getInstanceMethod(self, swizzleSelector);
	if (!swizzleMethod)
	{
		NSString *errorString = [NSString stringWithFormat:@"%@类没有找到 %@ 方法", NSStringFromClass([self class]), NSStringFromSelector(swizzleSelector)];
		*error = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:-1 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:errorString, NSLocalizedDescriptionKey, nil]];
		return NO;
	}
	
	if (class_addMethod(self, originSelector, method_getImplementation(swizzleMethod), method_getTypeEncoding(swizzleMethod)))
	{
		class_replaceMethod(self, swizzleSelector, method_getImplementation(originMethod), method_getTypeEncoding(originMethod));
	}
	else
	{
		method_exchangeImplementations(originMethod, swizzleMethod);
	}
	
	return YES;
}

@end
