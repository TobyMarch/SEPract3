//
//  modifyPersonViewController.m
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//
// Manages the modifyPerson View based on users interaction with the window
// This views code retrieves the information of a Person based on the users input
// of an ID into the idIn text field located in this view. That Persons information is
// searched for after the user pressed the Find button located on this scripts view.
// If the Person the user is looking for is found in the roster, the user is redirected to
// another view where he/she will modify that users information



#import "modifyPersonViewController.h"

@interface modifyPersonViewController ()

@end

@implementation modifyPersonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Purpose: Attempts to find a Person based on user inputed text in idIn text field to be modified
//Input: ID Number into idIn TextField
//Output: TBD
//Properties Modified: None
- (IBAction)performMod:(UIButton *)sender {
    //Code to modify a person here!
}
@end
