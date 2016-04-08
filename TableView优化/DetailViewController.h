//
//  DetailViewController.h
//  TableView优化
//
//  Created by Terry on 4/7/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Person;
@protocol AddDelegate;

@interface DetailViewController : UIViewController
@property (nonatomic, weak)id<AddDelegate> delegate;

-(instancetype)init;
-(void)recievePerson:(Person *)person;
-(void)hiddenButton;
@end
