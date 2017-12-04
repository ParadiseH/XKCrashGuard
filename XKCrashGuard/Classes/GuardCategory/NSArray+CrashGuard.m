//
//  NSArray+CrashGuard.m
//  YTContainerSafeDemo
//
//  Created by Zhong Junchi on 2017/10/18.
//  Copyright © 2017年 yuntu. All rights reserved.
//

#import "NSArray+CrashGuard.h"

@implementation NSArray (CrashGuard)

- (id)cg_objectAtIndex:(NSUInteger)index
{
	if (index < self.count)
	{
		return [self cg_objectAtIndex:index];
	}
	return nil;
}

- (id)cg_objectAtIndexNSArray0:(NSUInteger)index
{
    if (index < self.count)
    {
        return [self cg_objectAtIndexNSArray0:index];
    }
    return nil;
    
}

- (id)cg_objectAtIndexNSSingleObjectArrayI:(NSUInteger)index
{
    if (index < self.count)
    {
        return [self cg_objectAtIndexNSSingleObjectArrayI:index];
    }
    return nil;
}

- (NSArray *)cg_arrayByAddingObject:(id)anObject
{
	if (!anObject)
	{
		return self;
	}
	
	return [self cg_arrayByAddingObject:anObject];
}

- (NSArray *)cg_arrayByAddingObjectNSArray0:(id)anObject
{
    if (!anObject)
    {
        return self;
    }
    return [self cg_arrayByAddingObjectNSArray0:anObject];
}

- (NSArray *)cg_arrayByAddingObjectNSSingleObjectArrayI:(id)anObject
{
    if (!anObject)
    {
        return self;
    }
    return [self cg_arrayByAddingObjectNSSingleObjectArrayI:anObject];
}

@end



@implementation NSMutableArray (CrashGuard)

- (id)cg_objectAtIndex:(NSUInteger)index
{
	if (index < self.count)
	{
		return [self cg_objectAtIndex:index];
	}
	return nil;
}

- (void)cg_addObject:(id)anObject
{
	if (anObject)
	{
		[self cg_addObject:anObject];
	}
}

- (void)cg_removeObjectAtIndex:(NSUInteger)index
{
	if (index < self.count)
	{
		[self cg_removeObjectAtIndex:index];
	}
}

- (void)cg_insertObject:(id)anObject atIndex:(NSUInteger)index
{
	if (index <= self.count && anObject)
	{
		[self cg_insertObject:anObject atIndex:index];
	}
}

- (void)cg_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject
{
	if (index < self.count && anObject)
	{
		[self cg_replaceObjectAtIndex:index withObject:anObject];
	}
}

@end
