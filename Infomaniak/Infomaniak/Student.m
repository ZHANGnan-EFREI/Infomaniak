//
//  Student.m
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/30.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@implementation Student

-(id)initWithFistName:(NSString *)first lastName:(NSString *)last{
    self=[super init];
    if (self) {
        _firstName=first;
        _lastName=last;
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.firstName forKey:@"FirstName"];
    [aCoder encodeObject:self.lastName  forKey:@"LastName"];
    [aCoder encodeInteger:self.ID forKey:@"ID"];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super init]) {
        self.firstName=[aDecoder decodeObjectForKey:@"FirstName"];
        self.lastName=[aDecoder decodeObjectForKey:@"LastName"];
        self.ID=[aDecoder decodeObjectForKey:@"ID"];
    }
    return self;
}


@end