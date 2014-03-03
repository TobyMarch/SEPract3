///
///  ProfessorDetailViewController.h
///  Practicum3
///  Created by Calvin Chestnut on 2/28/14.
///  Copyright (c) 2014 Ithaca College. All rights reserved.
///

#import <UIKit/UIKit.h>
#import "SEListSingleton.h"

@interface ProfessorDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *idLabel;
@property (weak, nonatomic) IBOutlet UILabel *departmentLabel;
@property (weak, nonatomic) IBOutlet UILabel *salaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *tenureLabel;

@end
