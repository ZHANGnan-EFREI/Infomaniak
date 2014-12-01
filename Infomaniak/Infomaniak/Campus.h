//
//  Campus.h
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/28.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSObject.h>
#import "Student.h"
#import "Teacher.h"
#import "internalTeacher.h"
#import "externalTeacher.h"
#import "FullCampusException.h"
@interface Campus : NSObject<NSCoding>
@property (readonly)NSString* City;
@property (readonly)NSString* Region;
@property int Capacity;
@property (readonly)NSMutableArray* studentsList;
@property (readonly)NSMutableArray* teachersList;
-(id)initWithCity:(NSString*)cityName Region:(NSString*)regionName Capacity:(int)capacityNumber;
-(void)addStudent:(Student*)student;
-(void)removeStudent:(Student*)student;
-(void)addTeacher:(id)teacher;
-(void)removeTeacher:(id)teacher;
+(BOOL)isEqualCampusOne:(Campus*)one CampusTwo:(Campus*)two;
+(bool)isEqualStudentOne:(Student*)one StudentTwo:(Student*)two;
@end