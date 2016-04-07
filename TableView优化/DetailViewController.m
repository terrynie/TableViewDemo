//
//  DetailViewController.m
//  TableView优化
//
//  Created by Terry on 4/7/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "DetailViewController.h"
#import "Person.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *sex;
@property (weak, nonatomic) IBOutlet UITextField *age;
@end

@implementation DetailViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)recievePerson:(Person *)person {
    _name.text = person.name;
    _sex.text = person.sex;
    _age.text = person.age;
}

- (IBAction)add {
    Person *person = [Person personWithDict:]
}

@end
