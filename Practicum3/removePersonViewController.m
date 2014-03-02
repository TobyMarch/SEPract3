//
//  removePersonViewController.m
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//
// Manages the removePerson View based on users interaction with the window
// This views code focuses primarily on retrieving user input from the text field named idInput
// and removing the individual (should he/she exist in the list at the time) for the roster when
// the UI Button on this scripts view in pressed down. The user is alerted with a pop-up message
// on the success or failure of the removal process
//

#import "removePersonViewController.h"

@interface removePersonViewController ()

@end

@implementation removePersonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

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

- (IBAction)removePerson:(UIButton *)sender {
    if([_list removePerson:self.idInput.text.intValue]){
        [self.resultsLabel setText:@"Person Removed!"];
    }
    else{
        [self.resultsLabel setText:@"Person Not Found!"];
    }
}

//Purpose: Hides the keyboards of the text fields on the current view whenever a user touches anywhere outside the keyboard
//when entering text/numbers into any text field SOLELY on this view
//Input: User touch
//Output: None
//Properties Modified: None
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_idInput resignFirstResponder];
}

@end
