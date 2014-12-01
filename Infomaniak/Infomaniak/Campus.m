//
//  Campus.m
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/28.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Campus.h"

@implementation Campus
-(id)initWithCity:(NSString *)cityName Region:(NSString *)regionName Capacity:(int)capacityNumber{
    self=[super init];
    if (self) {
        _City=cityName;
        _Region=regionName;
        _Capacity=capacityNumber;
        _studentsList=[[NSMutableArray alloc] initWithCapacity:0];
        _teachersList=[[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}

-(void)addStudent:(Student *)student{
    if (_studentsList.count<self.Capacity || self.Capacity==0) {
        if (_studentsList.count==0) {
            [_studentsList addObject:student];
        } else {
            for (int i=0; i<[_studentsList count]; i++) {
                if ([[_studentsList objectAtIndex:i] ID]>student.ID) {
                    [_studentsList insertObject:student atIndex:i];
                    break;
                }else if (i==[_studentsList count]-1){
                    [_studentsList addObject:student];
                    break;
                }
            }
        }
    } else {
        @throw [FullCampusException exceptionWithName:@"Add student failed."
                                       reason:@"Error, the capacity of the Campus is full" userInfo:nil];
    }
}

-(void)removeStudent:(Student *)student{
    [_studentsList removeObject:student];
}

-(void)addTeacher:(id)teacher{
    [_teachersList addObject:teacher];
}

-(void)removeTeacher:(id)teacher{
    [_teachersList removeObject:teacher];
}

+(BOOL)isEqualCampusOne:(Campus *)one CampusTwo:(Campus *)two{
    if (one.City==two.City) {
        if (one.Region==two.Region) {
            return YES;
        }
    }
    return NO;
}

+(bool)isEqualStudentOne:(Student *)one StudentTwo:(Student *)two{
    if (one.ID!=two.ID) {
        return NO;
    } else if (one.ID==0){
        if (one.firstName!=two.firstName || one.lastName!=two.lastName) {
            return NO;
        }
        return YES;
    }
    return YES;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.City forKey:@"City"];
    [aCoder encodeObject:self.Region  forKey:@"Region"];
    [aCoder encodeInteger:self.Capacity forKey:@"Capacity"];
    [aCoder encodeObject:self.teachersList forKey:@"TeacherList"];
    [aCoder encodeObject:self.studentsList forKey:@"StudentList"];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super init]) {
        _City=[aDecoder decodeObjectForKey:@"City"];
        _Region=[aDecoder decodeObjectForKey:@"Region"];
        _Capacity=[aDecoder decodeObjectForKey:@"Capacity"];
        _teachersList=[aDecoder decodeObjectForKey:@"TeacherList"];
        _studentsList=[aDecoder decodeObjectForKey:@"StudentList"];
    }
    return self;
}


@end
