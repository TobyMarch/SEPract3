//
//  findPersonViewController.m
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//
// Manages the findPerson View based on users interaction with the window
// This views code focuses primarily on retrieving user input from the text field named idInput
// and finding a Person object with the corresponding ID when the UI Button on this view is pressed down.
// The information is then printed off into the Label called informationLabel
//

#import "findPersonViewController.h"

@interface findPersonViewController ()

@end

@implementation findPersonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//Purpose:              Makes sure that the List object is always available on load
//Input:                none
//Output:               none
//Properties Modified:  list
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.list = [[SEListSingleton sharedList] getList];
}

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Purpose: Finds a Persons information based on user inputted ID Number
//Input: ID Number in the idIn TextField
//Output: Person information into informationLabel Label
//Properties Modified: None
- (IBAction)findPerson:(id)sender {
    //Code for finding a person here!
}


//Purpose: Hides the keyboards of the text fields on the current view whenever a user touches anywhere outside the keyboard
//when entering text/numbers into any text field SOLELY on this view
//Input: User touch
//Output: None
//Properties Modified: None
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_idIn resignFirstResponder];
}

@end
