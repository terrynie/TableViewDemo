//
//  Person.h
//  TableView优化
//
//  Created by Terry on 4/7/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonCell.h"

@interface Person : NSObject
@property(nonatomic, retain)NSString *name;
@property(nonatomic, retain)NSString *sex;
@property(nonatomic, assign)NSInteger age;


+(instancetype)personWithDict:(NSDictionary *)dict;
-(instancetype)initWithDict:(NSDictionary *)dict;
-(instancetype)initWithCell:(PersonCell *)cell;
+(instancetype)personWithName:(NSString *)name andSex:(NSString *)sex andAge:(NSInteger)age;
@end
