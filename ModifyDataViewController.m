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

- (IBAction)createPerson:(id)sender {
    BOOL added=NO;
    BOOL emptyField=NO;
    if (self.gradYearLabel.hidden == NO) {
        if(!([self.firstName.text isEqualToString:@""] || [self.lastName.text isEqualToString:@""] || (self.idNumber.text.intValue==0) || (self.sliderValue.text.doubleValue==0.0) || (self.graduationYear.text.intValue==0) || [self.majorBox.text isEqualToString:@""])){
            [self.list removePerson:self.idNumber.text.intValue];
            added = [self.list addStudentWithMajor:self.majorBox.text andYear:self.graduationYear.text.intValue andGpa:self.sliderValue.text.doubleValue andFirstName:self.firstName.text andLastName:self.lastName.text andID:self.idNumber.text.intValue];
        }
        else{
            emptyField=YES;
        }
    }
    else {
        if(!([self.firstName.text isEqualToString:@""] || [self.lastName.text isEqualToString:@""] || (self.idNumber.text.intValue==0) || [self.departmentName.text isEqualToString:@""])){
            [self.list removePerson:self.idNumber.text.intValue];
            added = [self.list addProfessorWithSalary:self.sliderValue.text.doubleValue andTenured:self.tenureStatus.isOn andDept:self.departmentName.text andFirstName:self.firstName.text andLastName:self.lastName.text andID:self.idNumber.text.intValue];
        }
        else{
            emptyField=YES;
        }
    }
    if(!added) {
        if(emptyField){
            UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Add Person Failed" message:@"All fields must have a value" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [errorAlert show];
        }
        else{
            UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Add Person Failed" message:@"Person with that ID already exists" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [errorAlert show];
        }
    }
    else{
        UIAlertView *successAlert = [[UIAlertView alloc] initWithTitle:@"Added Person" message:[NSString stringWithFormat:@"%@ added!", self.firstName.text] delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil, nil];
        [successAlert show];
    }
    //An 'else' case is needed here, but I don't know how to implement it yet
    
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
