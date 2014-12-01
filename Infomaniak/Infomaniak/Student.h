//
//  Student.h
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/30.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSObject.h>

@interface Student : NSObject<NSCoding>
@property NSInteger ID;
@property NSString* firstName;
@property NSString* lastName;
-(id)initWithFistName:(NSString*)first lastName:(NSString*)last;
@end
