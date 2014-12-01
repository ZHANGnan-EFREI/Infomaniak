//
//  externalTeacher.h
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/30.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"

@interface externalTeacher : Teacher<NSCoding>
@property int Wage;
-(id)initWithFirstName:(NSString*)first lastName:(NSString*)last Wage:(int)wage;
@end