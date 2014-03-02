//
//  addPersonViewController.m
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//
// Manages the addPerson View based on users interaction with the window
// Depending on which object clicked on in the View, an action will be performed
// corresponding to whatever action is bound to said object. This codes view focuses
// primarily on retrieving information for the creation of a Person who is either a
// professor or a student. 
//

#import "addPersonViewController.h"

/*@interface addPersonViewController ()

@end*/

@implementation addPersonViewController

@synthesize list;

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

//Purpose: Informs the user of what value the current slider position is
//Input: Slider position
//Output: Outputs value into the text field called sliderValue (located beneath the slider )
//Properties Modified: sliderValue's text field
- (IBAction)sliderChange:(UISlider *)sender {
        double value = sender.value;
        self.sliderValue.text = [NSString stringWithFormat:@"%.1f", value];

}

//Purpose: Hides and Shows certain labels and text boxes based on which object you are creating
//Input: Position of the Segmented Controller
//Output: Shows/Hides certain UI components based on the Segmented Controllers position
//Properties Modified: All labels that pertain to either a student or a professor, UI slider values, show/hidden status of all objects pertaining to students or professors
- (IBAction)toggleType:(UISegmentedControl* )sender {
    if(sender.selectedSegmentIndex == 0){
        self.graduationYear.hidden = NO;
        self.gradYearLabel.hidden = NO;
        self.majorBox.hidden = NO;
        self.majorLabel.hidden = NO;
        
        self.tenuredLabel.hidden = YES;
        self.tenureStatus.hidden = YES;
        self.departmentLabel.hidden = YES;
        self.departmentName.hidden = YES;
        
        self.mainSlider.minimumValue = 0.0f;
        self.mainSlider.maximumValue = 4.0f;
        self.sliderLabel.text = @"GPA: ";
        self.sliderValue.text = @"4.0";
    }
    else{
        self.graduationYear.hidden = YES;
        self.gradYearLabel.hidden = YES;
        self.majorBox.hidden = YES;
        self.majorLabel.hidden = YES;
        
        self.tenuredLabel.hidden = NO;
        self.tenureStatus.hidden = NO;
        self.departmentLabel.hidden = NO;
        self.departmentName.hidden = NO;
        
        self.mainSlider.minimumValue = 10000;
        self.mainSlider.maximumValue = 100000;
        self.sliderLabel.text = @"Salary: ";
        self.sliderValue.text = @"10000";
    }
}


- (IBAction)createPerson:(id)sender {
    // Create object to be added to list
    // (I'm hoping that there's a more elegant way to determine which child object is being created)
    BOOL added=NO;
    if (self.gradYearLabel.hidden == NO) {
        if(!([self.firstName.text isEqualToString:@""] || [self.lastName.text isEqualToString:@""] || (self.idNumber.text.intValue==0) || (self.mainSlider.value==0) || (self.graduationYear.text.intValue==0) || [self.majorBox.text isEqualToString:@""])){
            added = [list addStudentWithMajor:self.majorBox.text andYear:self.graduationYear.text.intValue andGpa:self.mainSlider.value andFirstName:self.firstName.text andLastName:self.lastName.text andID:self.idNumber.text.intValue];
        }
    }
    else {
        if(!([self.firstName.text isEqualToString:@""] || [self.lastName.text isEqualToString:@""] || (self.idNumber.text.intValue==0) || (self.mainSlider.value==0) || [self.departmentName.text isEqualToString:@""])){
            added = [list addProfessorWithSalary:self.mainSlider.value andTenured:self.tenureStatus.isOn andDept:self.departmentName.text andFirstName:self.firstName.text andLastName:self.lastName.text andID:self.idNumber.text.intValue];
        }
    }
    if(!added) {
        UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Add Person Failed" message:@"Person with that ID already exists" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [errorAlert show];
    }
    else{
        UIAlertView *successAlert = [[UIAlertView alloc] initWithTitle:@"Added Person" message:[NSString stringWithFormat:@"%@ added!", self.firstName.text] delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil, nil];
        [successAlert show];
    }
    //An 'else' case is needed here, but I don't know how to implement it yet
    
}

//Purpose: Dismisses view when alert is responded to
//Input: buttonIndex, alertViewPressed
//Output: none
//Properties modified: dismisses current ViewController
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if ([alertView.title isEqualToString:@"Added Person"]){
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

//Purpose: Hides the keyboards of the text fields on the current view whenever a user touches anywhere outside the keyboard
//when entering text/numbers into any text field SOLELY on this view
//Input: User touch
//Output: None
//Properties Modified: None
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_firstName resignFirstResponder];
    [_lastName resignFirstResponder];
    [_idNumber resignFirstResponder];
    [_sliderValue resignFirstResponder];
    [_graduationYear resignFirstResponder];
    [_majorBox resignFirstResponder];
    [_departmentName resignFirstResponder];
}

@end
