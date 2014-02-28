//
//  StudentDetailViewController.h
//  Practicum3
//
//  Created by Calvin Chestnut on 2/28/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SEListSingleton.h"

@interface StudentDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *IdLabel;
@property (weak, nonatomic) IBOutlet UILabel *MajorLabel;
@property (weak, nonatomic) IBOutlet UILabel *GpaLabel;
@property (weak, nonatomic) IBOutlet UILabel *GraduationLabel;

@end
