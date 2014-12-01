//
//  externalTeacher.m
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/30.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "externalTeacher.h"

@implementation externalTeacher

-(id)initWithFirstName:(NSString *)first lastName:(NSString *)last Wage:(int)wage{
    self=[super init];
    if (self) {
        self.firstName=first;
        self.lastName=last;
        _Wage=wage;
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.firstName forKey:@"FirstName"];
    [aCoder encodeObject:self.lastName  forKey:@"LastName"];
    [aCoder encodeInteger:self.Wage forKey:@"Wage"];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super init]) {
        self.firstName=[aDecoder decodeObjectForKey:@"FirstName"];
        self.lastName=[aDecoder decodeObjectForKey:@"LastName"];
        self.Wage=[aDecoder decodeObjectForKey:@"Wage"];
    }
    return self;
}


@end