///
///  findPersonViewController.m
///  TestSegues
///  Created by Chris Kondrat on 2/27/14.
///  Copyright (c) 2014 Team Mojave All rights reserved.
/// Manages the findPerson View based on users interaction with the window
/// This views code focuses primarily on retrieving user input from the text field named idInput
/// and finding a Person object with the corresponding ID when the UI Button on this view is pressed down.
/// The information is then printed off into the Label called informationLabel
///

#import "findPersonViewController.h"

@interface findPersonViewController ()

@end

@implementation findPersonViewController

@synthesize list;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/**
 * Function: viewWillAppear:
 * Purpose: Makes sure that the List object is always available on load
 * Input:
 *      BOOL animated
 * Output:
 *      none
 * Properties Modified:
 *      list
 */
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


/**
 * Function: findPerson:
 * Purpose: Finds a Persons information based on user inputted ID Number
 * Input: 
 *      ID Number in the idIn TextField
 * Output: 
 *      Person information into informationLabel Label
 * Properties Modified: 
 *      none
 */
- (IBAction)findPerson:(id)sender {
    int idValue = self.idIn.text.intValue;
    //If an entry with that ID exists, create new DetailViewController to display information
    if(![self.idIn.text isEqualToString:@""]){
        if ([list findPerson:idValue]) {
            //Create new UIViewController to display entry details
            UIViewController *detail;
            //Determine class of found entry
            NSString *entryClass = [NSString stringWithFormat:@"%@", [[list returnPerson:idValue] class]];
            if ([entryClass isEqualToString:@"Student"]) {
                detail = [self.storyboard instantiateViewControllerWithIdentifier:@"StudentDetail"];
            }
            else {
                detail = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfessorDetail"];
            }
            //Set title of new UIViewController to the id of the entry
            NSString *title = [NSString stringWithFormat:@"%d",idValue];
            detail.title = title;
            //Push UIViewController
            [self.navigationController pushViewController:detail animated:YES];
        }
        else {
            UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Person Not Found" message:@"No person with that ID" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [errorAlert show];
        }
    }
    else {
        UIAlertView *failed = [[UIAlertView alloc] initWithTitle:@"Find Failed" message:@"No person with that ID found" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [failed show];
    }
}


/**
 * Function: touchesBegan:
 * Purpose: Hides the keyboards of the text fields on the current view whenever a user touches anywhere outside the keyboard when entering text/numbers into any text field SOLELY on this view
 * Input: 
 *      NSSet
 * Output: 
 *      none
 * Properties Modified: 
 *      none
 */

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_idIn resignFirstResponder];
}

@end
