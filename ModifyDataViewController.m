//
//  ModifyDataViewController.m
//  Practicum3
//
//  Created by Calvin Chestnut on 3/2/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//

#import "ModifyDataViewController.h"

@interface ModifyDataViewController ()

@end

@implementation ModifyDataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    int ID = self.title.intValue;
    Person *thePerson = [[[SEListSingleton sharedList] getList] returnPerson:ID];
    
    [self setTitle:[NSString stringWithFormat:@"Modify %@", [thePerson firstName]]];
    NSArray *items = [[NSArray alloc] initWithObjects:@"Student",@"Prof", nil];
    UISegmentedControl *control = [[UISegmentedControl alloc] initWithItems:items];
    if ([thePerson isKindOfClass:[Student class]]){
        [control setSelectedSegmentIndex:0];
        Student *new = thePerson;
        [self.sliderValue setText:[NSString stringWithFormat:@"%f", [new gpa]]];
        [self.graduationYear setText:[NSString stringWithFormat:@"%d", [new gradYear]]];
        [self.majorBox setText:[new major]];
    } else {
        [control setSelectedSegmentIndex:1];
        Professor *new = thePerson;
        [self.sliderValue setText:[NSString stringWithFormat:@"%f", [new salary]]];
        [self.departmentName setText:[new department]];
        if (new.tenure == NO){
            [self.tenureStatus setOn:NO];
        } else {
            [self.tenureStatus setOn:YES];
        }
    }
    [self toggleType:control];
    
    [self.firstName setText:[thePerson firstName]];
    [self.lastName setText:[thePerson lastName]];
    [self.idNumber setText:[NSString stringWithFormat:@"%d",[thePerson ID]]];
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

@end
