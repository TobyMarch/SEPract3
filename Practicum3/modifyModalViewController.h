//
//  modifyModalViewController.h
//  Practicum3
//
//  Created by lab on 3/2/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface modifyModalViewController : UIViewController

//Properties hinging on the Person class
@property (weak, nonatomic) IBOutlet UITextField *firstName; //Text Field which holds Persons First Name
@property (weak, nonatomic) IBOutlet UITextField *lastName; //Text Field which holds Persons Last Name
@property (weak, nonatomic) IBOutlet UITextField *idNumber; //Text Field which holds ID Number for a person.


//Properties hinging on the Student class
@property (weak, nonatomic) IBOutlet UITextField *graduationYear; //Text Field which holds the graduation year for a Student
@property (weak, nonatomic) IBOutlet UITextField *majorBox; //Text Field which holds the major of a student


//Properties hinging on the Professor Class
@property (weak, nonatomic) IBOutlet UISwitch *tenureStatus; //Text Field which holds the tenured status of a professor
@property (weak, nonatomic) IBOutlet UITextField *departmentName; //Text Field which holds the department name of a professor


//Properties that will change depending on who/what is being created
//3 Slider Properties
@property (weak, nonatomic) IBOutlet UISlider *mainSlider; //The slider itself
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel; //The slider label
@property (weak, nonatomic) IBOutlet UITextField *sliderValue; //The sliders text filed

//Student Labels
@property (weak, nonatomic) IBOutlet UILabel *gradYearLabel;
@property (weak, nonatomic) IBOutlet UILabel *majorLabel;

//Teacher Labels
@property (weak, nonatomic) IBOutlet UILabel *tenuredLabel;
@property (weak, nonatomic) IBOutlet UILabel *departmentLabel;

//Singleton guided List object
//@property (weak, nonatomic) PersonList *list;


//Methods
- (IBAction)sliderChange:(UISlider *)sender;
- (IBAction)modifyPerson:(id)sender;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end
