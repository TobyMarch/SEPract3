//
//  removePersonViewController.h
//  TestSegues
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SEListSingleton.h"

@interface removePersonViewController : UIViewController <UIAlertViewDelegate>

//Properties
@property (weak, nonatomic) IBOutlet UITextField *idInput;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;

//Singleton guided List object
@property (weak, nonatomic) PersonList *list;

//Methods
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (IBAction)removePerson:(UIButton *)sender;

@end
