//
//  internalTeacher.h
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/30.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"

static int Salary;
@interface internalTeacher : Teacher<NSCoding>
-(id)initWithFirstName:(NSString*)first lastName:(NSString *)last;
+(int)Salary;
+(void)setSalary:(int)salary;
@end