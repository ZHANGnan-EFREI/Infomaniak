//
//  main.m
//  Infomaniak
//
//  Created by ZN-MAC on 14/11/27.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Campus.h"
//#import "Student.h"
//#import "Teacher.h"
//#import "externalTeacher.h"
//#import "internalTeacher.h"
#import "Infomaniak.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //Teacher* tea = [[Teacher alloc] init];
        //Teacher* tea = [[externalTeacher alloc] initWithFirstName:@"Nan" lastName:@"ZHANG" Wage:10000];
        
        NSLog(@"Create a campus with city: Paris, region: ile-de-france, capacity: 3000");
        Campus* pi3000=[[Campus alloc] initWithCity:@"Paris" Region:@"ile-de-france" Capacity:3000];
        
        NSLog(@"Create a campus with city: Paris, region: ile-de-france, capacity: 1");
        Campus* pi1=[[Campus alloc] initWithCity:@"Paris" Region:@"ile-de-france" Capacity:1];
        
        NSLog(@"Create a campus with city: Villejuif, region: ile-de-france, capacity: 0");
        Campus* vi0=[[Campus alloc] initWithCity:@"Villejuif" Region:@"ile-de-france" Capacity:0];
        
        NSLog(@"Create a student with FirstName: Nan, LastName: ZHANG, ID: 20140001");
        Student* NZ20140001=[[Student alloc] initWithFistName:@"Nan" lastName:@"ZHANG"];
        NZ20140001.ID=20140001;
        
        NSLog(@"Create a student with FirstName: Hongyu, LastName: LI, ID: 0");
        Student* HL0=[[Student alloc] initWithFistName:@"Hongyu" lastName:@"LI"];
        //HL20140002.ID=20140002;
        
        
        NSLog(@"Create a student with FirstName: Hongyu, LastName: ZHANG, ID: 0");
        Student* HZ0=[[Student alloc] initWithFistName:@"Hongyu" lastName:@"ZHANG"];

        
        NSLog(@"Create a student with FirstName: Shuainan, LastName: LI, ID: 20140003");
        Student* SL20140003=[[Student alloc] initWithFistName:@"Shuainan" lastName:@"LI"];
        SL20140003.ID=20140003;
        
        NSLog(@"Create a internal teacher with FirstName: Zilue, LastName: LIU");
        internalTeacher* ZL=[[internalTeacher alloc] initWithFirstName:@"Zilue" lastName:@"LI"];
        
        NSLog(@"Create a internal teacher with FirstName: Sichao, LastName: LI");
        internalTeacher* SL=[[internalTeacher alloc] initWithFirstName:@"Sichao" lastName:@"LI"];
        
        NSLog(@"Create a external teacher with FirstName: Yang, LastName: Chen");
        externalTeacher* YC=[[externalTeacher alloc] initWithFirstName:@"Yang" lastName:@"Chen" Wage:10000];
        
        NSLog(@"Add students into campus.");
        [pi3000 addStudent:NZ20140001];
        [pi3000 addStudent:SL20140003];
        [pi3000 addStudent:HL0];
        
        [vi0 addStudent:NZ20140001];
        [vi0 addStudent:SL20140003];
        [vi0 addStudent:HL0];
        
        [pi1 addStudent:NZ20140001];
        
        NSLog(@"Add teachers into campus.");
        [pi3000 addTeacher:ZL];
        [pi1 addTeacher:SL];
        [vi0 addTeacher:YC];
        
        
        NSLog(@"Check if students are in order.");
        int count = (int)[vi0.studentsList count];
        for (int i=0; i<count ; i++) {
            NSLog(@"Student %i: %@ %@ %li",i+1,[[vi0.studentsList objectAtIndex:i] firstName],[[vi0.studentsList objectAtIndex:i] lastName],(long)[[vi0.studentsList objectAtIndex:i] ID]);
        }
        NSLog(@"Students are in order.");
        
        
        NSLog(@"Change the salary of internal teachers with class level function.");
        [internalTeacher setSalary:15000];
        
        printf("Campus: Paris ile-de-france 3000, is ");
        if ([Campus isEqualCampusOne:pi3000 CampusTwo:pi1]) {
            printf("equal ");
        } else {
            printf("not equal ");
        }
        printf("with campus: Paris ile-de-france 1.\n");
        
        printf("Campus: Paris ile-de-france 3000, is ");
        if ([Campus isEqualCampusOne:pi3000 CampusTwo:vi0]) {
            printf("equal ");
        } else {
            printf("not equal ");
        }
        printf("with campus: Villejuif ile-de-france 0.\n");
        
        

        printf("Student: Hongyu LI 0, is ");
        if ([Campus isEqualStudentOne:HL0 StudentTwo:NZ20140001]) {
            printf("equal ");
        } else {
            printf("not equal ");
        }
        printf("with student: Nan ZHANG 20140001.\n");
        
        
        printf("Student: Hongyu LI 0, is ");
        if ([Campus isEqualStudentOne:HL0 StudentTwo:HZ0]) {
            printf("equal ");
        } else {
            printf("not equal ");
        }
        printf("with student: Hongyu ZHANG 0.\n");
        
        
        printf("Student: Hongyu LI 0, is ");
        if ([Campus isEqualStudentOne:HL0 StudentTwo:HL0]) {
            printf("equal ");
        } else {
            printf("not equal ");
        }
        printf("with student: Hongyu LI 0.\n");
        
        
        printf("Student: Nan ZHANG 20140001, is ");
        if ([Campus isEqualStudentOne:NZ20140001 StudentTwo:SL20140003]) {
            printf("equal ");
        } else {
            printf("not equal ");
        }
        printf("with student: Shuainan LI 20140003.\n");
        
        NSLog(@"Save data.");
        Infomaniak* Inf=[[Infomaniak alloc] init];
        [Inf addCampus:pi3000];
        [Inf addCampus:pi1];
        [Inf addCampus:vi0];
        [Inf saveData];
        //[Inf loadData];
        
        
        





        
    }
    return 0;
}
