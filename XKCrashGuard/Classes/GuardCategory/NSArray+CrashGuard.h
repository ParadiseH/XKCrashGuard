//
//  NSArray+CrashGuard.h
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (CrashGuard)

- (id)cg_objectAtIndex:(NSUInteger)index;
- (id)cg_objectAtIndexNSArray0:(NSUInteger)index;
- (id)cg_objectAtIndexNSSingleObjectArrayI:(NSUInteger)index;

- (NSArray *)cg_arrayByAddingObject:(id)anObject;
- (NSArray *)cg_arrayByAddingObjectNSArray0:(id)anObject;
- (NSArray *)cg_arrayByAddingObjectNSSingleObjectArrayI:(id)anObject;

@end

@interface NSMutableArray (CrashGuard)

- (id)cg_objectAtIndex:(NSUInteger)index;
- (void)cg_addObject:(id)anObject;
- (void)cg_removeObjectAtIndex:(NSUInteger)index;
- (void)cg_insertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)cg_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
@end
