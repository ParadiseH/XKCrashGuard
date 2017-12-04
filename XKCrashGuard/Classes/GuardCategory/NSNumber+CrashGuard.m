//
//  NSNumber+CrashGuard.m
//  YTCrashGuardDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import "NSNumber+CrashGuard.h"

@implementation NSNumber (CrashGuard)

- (BOOL)cg_isEqualToNumber:(NSNumber *)number
{
	if (!number) return NO;
	
	return [self cg_isEqualToNumber:number];
}

- (NSComparisonResult)cg_compare:(NSNumber *)otherNumber
{
	if (!otherNumber) return NSOrderedAscending;
	
	return [self cg_compare:otherNumber];
}

@end
