//
//  allPeopleTableViewController.h
//  Practicum3
//
//  Created by Calvin Chestnut on 2/28/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SEListSingleton.h"
#import "StudentDetailViewController.h"
#import "ProfessorDetailViewController.h"

@interface allPeopleTableViewController : UITableViewController

//Singleton guided List object
@property (weak, nonatomic) PersonList *list;

@end
