//
//  DetailViewController.h
//  TableView优化
//
//  Created by Terry on 4/7/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Person;

@interface DetailViewController : UIViewController
-(instancetype)init;
-(void)recievePerson:(Person *)person;
@end
