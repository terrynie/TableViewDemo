//
//  ViewController.m
//  TableView优化
//
//  Created by Terry on 4/1/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "AddDelegate.h"
#import "Person.h"
#import "PersonCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, AddDelegate>
//store models of tableview
@property (nonatomic, retain) NSMutableArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //load file
    NSArray *tempArray = [NSMutableArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Person" ofType:@"plist"]];
    _array = [[NSMutableArray alloc] init];
    
    //convert file contents to model
    for (NSDictionary *dict in tempArray) {
        Person *person = [Person personWithDict:dict];
        [_array addObject:person];
    }
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}

/*!
 *  return the cell for row at indexPath
 */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //define reuseidentify
    static NSString *ID = @"cell";
    
    //dequeue cell from tableview cache pool
    PersonCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    //none cell in cache pool
    if (cell == nil) {
        //alloc a cell
        cell = [[PersonCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    //set the value of table view cell
    cell.name.text = [_array[indexPath.row] valueForKey:@"name"];
    cell.sex.text = [_array[indexPath.row] valueForKey:@"sex"];
    cell.age.text = [NSString stringWithFormat:@"%ld",[[_array[indexPath.row] valueForKey:@"age"] integerValue]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"detail" sender:[self.tableView cellForRowAtIndexPath:indexPath]];  
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detail"]) {
        DetailViewController *dvc = segue.destinationViewController;
        Person *person = [[Person alloc] initWithCell:sender];
        [dvc recievePerson:person];
    }
}

#pragma delegate

- (IBAction)add {
    [self performSegueWithIdentifier:@"add" sender:self];
}


-(void)addCellForPerson:(Person *)person{
    [_array addObject:person];
    [self.tableView reloadData];
}

@end
