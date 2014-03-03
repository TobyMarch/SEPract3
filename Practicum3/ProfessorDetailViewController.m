///
/// ProfessorDetailViewController.m
/// Practicum3
/// Created by Calvin Chestnut on 2/28/14.
/// Copyright (c) 2014 Ithaca College. All rights reserved.
///

#import "ProfessorDetailViewController.h"

@interface ProfessorDetailViewController ()

@end

@implementation ProfessorDetailViewController

@synthesize idLabel, departmentLabel, salaryLabel, tenureLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
/**
 * Function: viewDidLoad
 * Purpose: runs after view loaded into memory, populated detail view
 * Input:
        none
 * Output:
        none
 * Properties Modified:
        none
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    int profID = [[self title] intValue];
    
    Professor *theProf = [[[SEListSingleton sharedList] getList] returnPerson:profID];
    [self setTitle:[NSString stringWithFormat:@"%@ %@",[theProf firstName], [theProf lastName]]];
    [idLabel setText:[NSString stringWithFormat:@"ID: %d", [theProf ID]]];
    [departmentLabel setText:[NSString stringWithFormat:@"Department: %@", [theProf department]]];
    [salaryLabel setText:[NSString stringWithFormat:@"Salary: %.0f", [theProf salary]]];
    NSString* tenured;
    if ([theProf tenure]){
        tenured = @"Tenured";
    } else {
        tenured = @"Isn't tenured";
    }
    [tenureLabel setText:tenured];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
