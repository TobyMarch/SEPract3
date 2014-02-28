//
//  StudentDetailViewController.m
//  Practicum3
//
//  Created by Calvin Chestnut on 2/28/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//  something weired

#import "StudentDetailViewController.h"

@interface StudentDetailViewController ()

@end

@implementation StudentDetailViewController

@synthesize IdLabel, MajorLabel, GpaLabel, GraduationLabel;

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
    
    int studentID = [[self title] intValue];
    
    Student *theStudent = [[[SEListSingleton sharedList] getList] find:studentID];
    [self setTitle:[NSString stringWithFormat:@"%@ %@",[theStudent firstName], [theStudent lastName]]];
    [IdLabel setText:[NSString stringWithFormat:@"ID: %d", [theStudent ID]]];
    [MajorLabel setText:[NSString stringWithFormat:@"Major: %@", [theStudent major]]];
    [GpaLabel setText:[NSString stringWithFormat:@"GPA: %.2f", [theStudent gpa]]];
    [GraduationLabel setText:[NSString stringWithFormat:@"Class of %d", [theStudent gradYear]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
