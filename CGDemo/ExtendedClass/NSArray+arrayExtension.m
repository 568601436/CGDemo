//
//  NSArray+arrayExtension.h
//  Environmental
//
//  Created by CG on 15/9/5.
//  Copyright (c) 2015年 CG. All rights reserved.
//

#import "NSArray+arrayExtension.h"

@implementation NSArray (arrayExtension)
- (id)objectAtNotNullIndex:(NSUInteger)index{
    if (self.count>index&&self!=nil) {
        return [self objectAtIndex:index];
    }
    return @"";
}
@end
