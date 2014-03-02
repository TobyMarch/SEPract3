//
//  modifyModalViewController.m
//  Practicum3
//
//  Created by lab on 3/2/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//

#import "modifyModalViewController.h"


@interface modifyModalViewController ()

@end

@implementation modifyModalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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

- (IBAction)modifyPerson:(id)sender{
    
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
