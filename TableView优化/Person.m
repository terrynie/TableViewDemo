//
//  Person.m
//  TableView优化
//
//  Created by Terry on 4/7/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "Person.h"
@interface Person ()

@end

@implementation Person

-(instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.name = [dict valueForKey:@"name"];
        self.sex = [dict valueForKey:@"sex"];
        self.age = [[dict valueForKey:@"age"] integerValue];
    }
    return self;
}

+(instancetype)personWithDict:(NSDictionary *)dict {
    return [[Person alloc] initWithDict:dict];
}

-(instancetype)initWithCell:(PersonCell *)cell {
    if (self = [super init]) {
        self.name = cell.name.text;
        self.sex = cell.sex.text;
        self.age = [cell.age.text integerValue];
    }
    return self;
}

+(instancetype)personWithName:(NSString *)name andSex:(NSString *)sex andAge:(NSInteger)age{
    Person *person = [[Person alloc] init];
    person.name = name;
    person.age = age;
    person.sex = sex;
    
    return person;
}
@end
