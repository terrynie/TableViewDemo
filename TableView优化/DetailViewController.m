//
//  DetailViewController.m
//  TableView优化
//
//  Created by Terry on 4/7/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "DetailViewController.h"
#import "Person.h"
#import "AddDelegate.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *sex;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation DetailViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)recievePerson:(Person *)person {
    _name.text = person.name;
    _sex.text = person.sex;
    _age.text = [NSString stringWithFormat:@"%ld",person.age];
}

- (IBAction)add {
    Person *person = [Person personWithName:_name.text andSex:_sex.text andAge:[_age.text integerValue]];
    [self.delegate addCellForPerson:person];
}

-(void)hiddenButton {
    [self.button setHidden:YES];
}
@end
