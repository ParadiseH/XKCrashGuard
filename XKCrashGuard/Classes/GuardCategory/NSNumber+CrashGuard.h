//
//  NSNumber+CrashGuard.h
//  YTCrashGuardDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (CrashGuard)

- (BOOL)cg_isEqualToNumber:(NSNumber *)number;
- (NSComparisonResult)cg_compare:(NSNumber *)otherNumber;

@end
