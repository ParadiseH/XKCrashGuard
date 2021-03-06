//
//  NSObject+Swizzling.h
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzling)

+ (BOOL)swizzleMethod:(SEL)originSelector swizzleSelector:(SEL)swizzleSelector error:(NSError **)error;

@end
