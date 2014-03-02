//
//  modifyPersonViewController.h
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SEListSingleton.h"

@interface modifyPersonViewController : UIViewController

//Properties
@property (weak, nonatomic) IBOutlet UITextField *idIn;

//Singleton guided List object
@property (weak, nonatomic) PersonList *list;

//Methods
- (IBAction)performMod:(UIButton *)sender;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end
