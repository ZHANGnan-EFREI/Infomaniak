//
//  Infomaniak.h
//  Infomaniak
//
//  Created by ZN-MAC on 14/12/1.
//  Copyright (c) 2014年 ZHANG Nan. All rights reserved.
//

#import "Campus.h"

@interface Infomaniak : NSObject
@property NSMutableArray* campusList;
-(id)init;
-(void)addCampus:(Campus*)campus;
-(void)saveData;
-(void)loadData;
@end