///
/// ViewController.m
/// Practicum3
/// .m file for the Main Menu view
/// Created by Chris Kondrat on 2/27/14.
/// Copyright (c) 2014 Team Mojave All rights reserved.
///

#import "ViewController.h"
#import "SEListSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

/**
 * Function: viewDidLoad:
 * Purpose: Runs once view is loaded into memory, Initializes singleton list
 * Input:
 *      none
 * Output:
 *      none
 * Properties Modified:
 *      sharedList
 */
- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    PersonList *newList = [[PersonList alloc] init];
    [[SEListSingleton sharedList] setList:newList];
     
}

- (void)didReceiveMemoryWarning{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
