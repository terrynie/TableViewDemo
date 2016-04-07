//
//  AddDelegate.h
//  TableView优化
//
//  Created by Terry on 4/7/16.
//  Copyright © 2016 Terry. All rights reserved.
//
@class NSString;
@class Person;

@protocol AddDelegate <NSObject>

-(void)addCellForPerson:(Person *)person;

@end