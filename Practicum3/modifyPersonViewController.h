//
//  modifyPersonViewController.h
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//

#import <UIKit/UIKit.h>

@interface modifyPersonViewController : UIViewController

//Properties
@property (weak, nonatomic) IBOutlet UITextField *idIn;

//Methods
- (IBAction)performMod:(UIButton *)sender;

@end
