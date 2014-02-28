//
//  findPersonViewController.h
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//

#import <UIKit/UIKit.h>

@interface findPersonViewController : UIViewController

//Properties
@property (weak, nonatomic) IBOutlet UITextField *idIn;
@property (weak, nonatomic) IBOutlet UILabel *informationLabel;

//Actions
- (IBAction)findPerson:(id)sender;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end
