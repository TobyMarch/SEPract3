//
//  removePersonViewController.h
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//

#import <UIKit/UIKit.h>

@interface removePersonViewController : UIViewController

//Properties
@property (weak, nonatomic) IBOutlet UITextField *idInput;

//Methods
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (IBAction)removePerson:(UIButton *)sender;

@end
