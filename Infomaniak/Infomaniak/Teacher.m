//
//  Teacher.m
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/30.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"

@implementation Teacher

- (id)init{
    if ([self class] == [Teacher class]) {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                       reason:@"Error, attempting to instantiate AbstractClass directly." userInfo:nil];
    }
    
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}
@end