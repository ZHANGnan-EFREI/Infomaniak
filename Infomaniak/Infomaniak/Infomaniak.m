//
//  Infomaniak.m
//  Infomaniak
//
//  Created by ZN-MAC on 14/12/1.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Infomaniak.h"

@implementation Infomaniak

-(id)init{
    self=[super init];
    _campusList=[[NSMutableArray alloc] initWithCapacity:0];
    return self;
}

-(void)addCampus:(Campus *)campus{
    [_campusList addObject:campus];
}


-(void)saveData{
    NSArray* save = [[NSArray alloc] initWithArray:_campusList];
    //[save writeToFile:@"Infomaniak.xml" atomically:YES];
    NSData  *data = [NSKeyedArchiver archivedDataWithRootObject:save];
    [data writeToFile:@"data" atomically:YES];
}

-(void)loadData{
    NSData *data = [NSData dataWithContentsOfFile:@"data"];
    _campusList = [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

@end