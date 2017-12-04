//
//  NSDictionary+CrashGuard.h
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (CrashGuard)

- (void)cg_setValue:(id)value forKey:(NSString *)key;

@end

@interface NSMutableDictionary (CrashGuard)

- (void)cg_setValue:(id)value forKey:(NSString *)key;
- (void)cg_setObject:(id)anObject forKey:(id<NSCopying>)aKey;

@end
