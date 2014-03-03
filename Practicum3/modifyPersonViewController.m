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

@synthesize list;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/**
 * Purpose:              Makes sure that the List object is always available on load
 * Input:                none
 * Output:               none
 * Properties Modified:  list
 */
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.list = [[SEListSingleton sharedList] getList];
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

/**
 * Purpose: Attempts to find a Person based on user inputed text in idIn text field to be modified
 * Input: ID Number into idIn TextField
 * Output: TBD
 * Properties Modified: None
 */
- (IBAction)performMod:(UIButton *)sender {
    //Code to modify a person here!
    int idValue = self.idIn.text.intValue;
    if ([list findPerson:idValue]) {
        //Should check before pushing the modal view
        //After check, returnPerson from PersonList, and populate the modify Modal
        
    }
    else {
        //Error message here
    }
}

/**
 * Purpose: Hides the keyboards of the text fields on the current view whenever a user touches anywhere outside the keyboard when entering text/numbers into any text field SOLELY on this view
 * Input: User touch
 * Output: None
 * Properties Modified: None
 */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_idIn resignFirstResponder];
}
@end
