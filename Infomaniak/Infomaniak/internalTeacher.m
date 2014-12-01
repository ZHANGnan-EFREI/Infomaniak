//
//  internalTeacher.m
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/30.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "internalTeacher.h"

@implementation internalTeacher

-(id)initWithFirstName:(NSString *)first lastName:(NSString *)last{
    self=[super self];
    if (self) {
        self.firstName=first;
        self.lastName=last;
    }
    return self;
}

+(int)Salary{
    return Salary;
}

+(void)setSalary:(int)salary{
    Salary=salary;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.firstName forKey:@"FirstName"];
    [aCoder encodeObject:self.lastName  forKey:@"LastName"];
    [aCoder encodeInteger:Salary forKey:@"Salary"];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super init]) {
        self.firstName=[aDecoder decodeObjectForKey:@"FirstName"];
        self.lastName=[aDecoder decodeObjectForKey:@"LastName"];
        Salary=[aDecoder decodeObjectForKey:@"Salary"];
    }
    return self;
}

@end