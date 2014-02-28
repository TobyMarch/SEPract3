//
//  ViewController.m
//  TestSegues
//  .m file for the Main Menu view
//
//  Created by Chris Kondrat on 2/27/14.
//  Copyright (c) 2014 Team Mojave All rights reserved.
//

#import "ViewController.h"
#import "SEListSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*
        This is test code I to display info in the tableView
        Will create a new PersonList and add to the Singleton
     
     */
    
    PersonList *newList = [[PersonList alloc] init];
    Student *newPerson = [Student alloc];
    newPerson = [newPerson initWithfName:@"Calvin" andlName:@"Chestnut" andID:701136956];
    [[newList list] insertObject:newPerson atIndex:0];
    
    Student *secondPerson = [Student alloc];
    secondPerson = [secondPerson initWithfName:@"Toby" andlName:@"March" andID:700843602];
    [secondPerson setGpa:3.6];
    [secondPerson setGradYear:2014];
    [secondPerson setMajor:@"Computer Science"];
    [[newList list] insertObject:secondPerson atIndex:0];
    
    /*
    [[newList list] insertObject:[[Person alloc] initWithfName:@"Toby" andlName:@"March" andID:123456789] atIndex:0];
    [[newList list] insertObject:[[Person alloc] initWithfName:@"Chris" andlName:@"Kindrat" andID:987654321] atIndex:0];
    [[newList list] insertObject:[[Person alloc] initWithfName:@"John" andlName:@"Huttlinger" andID:234567890] atIndex:0];
    */
    [[SEListSingleton sharedList] setList:newList];
     
    
}

- (void)didReceiveMemoryWarning{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
