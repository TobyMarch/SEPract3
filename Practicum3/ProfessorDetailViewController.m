//
//  ProfessorDetailViewController.m
//  Practicum3
//
//  Created by Calvin Chestnut on 2/28/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//

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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    int professorID = [[self title] intValue];
    
    Professor *theProf = [[[SEListSingleton sharedList] getList] find:professorID];
    [self setTitle:[NSString stringWithFormat:@"%@ %@", [theProf firstName], [theProf lastName]]];
    [idLabel setText:[NSString stringWithFormat:@"ID: %d", [theProf ID]]];
    [departmentLabel setText:[NSString stringWithFormat:@"Dept: %@",[theProf department]]];
    [salaryLabel setText:[NSString stringWithFormat:@"Salary: %.2f", [theProf salary]]];
    NSString *tenureStatus;
    if ([theProf tenure]){
         tenureStatus = @"Tenuerd";
    } else {
        tenureStatus = @"Not tenuerd";
    }
    [tenureLabel setText:tenureStatus];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
