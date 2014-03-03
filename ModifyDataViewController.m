//
//  ModifyDataViewController.m
//  Practicum3
//
//  Description: Displays fields to allow editing of existing Person and save changes
//  Created by Calvin Chestnut
//  Partners: Toby March, Chris Kondrat, John Huttlinger
//
//  Algorithm:
//      Subclass of AddPersonViewController
//      When preparing the View, will initialize all fields with existing Person data
//      Runs the same checks as AddPersonViewController
//      On Submit, will delete existing user and replace with user with updated data
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
    
    //Gets the Person's ID set as the View Title
    int ID = self.title.intValue;
    
    //Collects the Person with given ID
    Person *thePerson = [[[SEListSingleton sharedList] getList] returnPerson:ID];
    
    //Resets the title to the Person's name
    [self setTitle:[NSString stringWithFormat:@"Modify %@", [thePerson firstName]]];
    
    //Creates a NSArray with dummy items to create a dummy UISegmentedControl
    NSArray *items = [[NSArray alloc] initWithObjects:@"Student",@"Prof", nil];
    UISegmentedControl *control = [[UISegmentedControl alloc] initWithItems:items];
    
    //Checks the class of the Person
    if ([thePerson isKindOfClass:[Student class]]){
        //If Student
        
        //Set selected SegmentedControll Index to 0 (for Student selection)
        [control setSelectedSegmentIndex:0];
        //Create a new Student from Person data
        Student *new = thePerson;
        
        //Sets Student specific values in data entry to current values
        [self.sliderValue setText:[NSString stringWithFormat:@"%f", [new gpa]]];
        [self.graduationYear setText:[NSString stringWithFormat:@"%d", [new gradYear]]];
        [self.majorBox setText:[new major]];
    } else {
        //If Professor
        
        //Set SegmentedControl Index to 1 (for Professor selection)
        [control setSelectedSegmentIndex:1];
        
        //Creates a new Professor from Person data
        Professor *new = thePerson;
        
        //Sets Professor specific values in data entry to current values
        [self.sliderValue setText:[NSString stringWithFormat:@"%f", [new salary]]];
        [self.departmentName setText:[new department]];
        if (new.tenure == NO){
            [self.tenureStatus setOn:NO];
        } else {
            [self.tenureStatus setOn:YES];
        }
    }
    //Triggers control selection in addPersonViewController
    //Does not allow changes to person type
    [self toggleType:control];
    
    //Sets Person values in data entry to current values
    [self.firstName setText:[thePerson firstName]];
    [self.lastName setText:[thePerson lastName]];
    [self.idNumber setText:[NSString stringWithFormat:@"%d",[thePerson ID]]];
}

//Overrides addPersonViewController's createPerson method.
//Only one change
//Deletes person being modified before adding again with changes
- (IBAction)createPerson:(id)sender {
    BOOL added=NO;
    BOOL emptyField=NO;
    if (self.gradYearLabel.hidden == NO) {
        if(!([self.firstName.text isEqualToString:@""] || [self.lastName.text isEqualToString:@""] || (self.idNumber.text.intValue==0) || (self.sliderValue.text.doubleValue==0.0) || (self.graduationYear.text.intValue==0) || [self.majorBox.text isEqualToString:@""])){
            
            //Removes Person from List
            [self.list removePerson:self.idNumber.text.intValue];
            //Readds the person with new data
            added = [self.list addStudentWithMajor:self.majorBox.text andYear:self.graduationYear.text.intValue andGpa:self.sliderValue.text.doubleValue andFirstName:self.firstName.text andLastName:self.lastName.text andID:self.idNumber.text.intValue];
        }
        else{
            emptyField=YES;
        }
    }
    else {
        if(!([self.firstName.text isEqualToString:@""] || [self.lastName.text isEqualToString:@""] || (self.idNumber.text.intValue==0) || [self.departmentName.text isEqualToString:@""])){
            
            //Removes Person from List
            [self.list removePerson:self.idNumber.text.intValue];
            //Readds the person with new data
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
