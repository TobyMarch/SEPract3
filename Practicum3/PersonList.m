//
//  PersonList.m
//  Purpose: Manage a NSMutable Array object that stores students/professors.
//  Created by John Huttlinger
//  Edited by Matthew Kercher on 2/9/14, 2/13/14
//      - Refactored for Objective-C, changed from linked list to NSMutableArray
//      - Removed getHead function.
//

#import "PersonList.h"
#import "Professor.h"
#import "Student.h"

@implementation PersonList

@synthesize list;

- (id) init
{
    if (self = [super init]) {
        list = [[NSMutableArray alloc] init];
        return self;
    }
    
    return nil;
    
}

- (BOOL) addProfessorWithSalary:(double)salaryIn andTenured:(BOOL)tenuredIn andDept:(NSString *)deptIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn{
    if(![self findPerson:idIn]){
        [list addObject: [[Professor alloc] initWithFirstName:firstNameIn andLastName:lastNameIn andID:idIn andTenured:tenuredIn andSalary:salaryIn andDept:deptIn]];
        return YES;
    }
    return NO;
}

- (BOOL) addStudentWithMajor:(NSString *)majorIn andYear:(int)yearIn andGpa:(double)gpaIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn{
    if(![self findPerson:idIn]){
        [list addObject:[[Student alloc] initWithFirstName:firstNameIn andLastName:lastNameIn andID:idIn andMajor:majorIn andYear:yearIn andGPA:gpaIn]];
        return YES;
    }
    return NO;
}

- (BOOL) removePerson: (int) IDin;
{
    if ([list count] == 0){
        return NO;
    }
    for (int i = 0; i < [list count]; i++){
        if ([[list objectAtIndex: i] ID] == IDin){
            [list removeObjectAtIndex: i];
            return YES;
        }
    }
    return NO;
}


- (BOOL) findPerson: (int) IDin{
    
    for (int i = 0; i < [list count]; i++){
        if ([[list objectAtIndex: i] ID] == IDin){
            NSLog(@"%@", [list objectAtIndex: i]);
            return YES;
        }
    }
    
    return NO;
}

- (id) returnPerson: (int) IDin {
    for (int i = 0; i < [list count]; i++){
        if ([[list objectAtIndex: i] ID] == IDin){
            //NSLog(@"%@", [list objectAtIndex: i]);
            return [list objectAtIndex: i];
        }
    }
    return Nil;
}

- (BOOL) printList{
    /*
     for (int i = 0; i < [list count]; i++){
     NSLog(@"Persons %@", [[list objectAtIndex:i] firstName]);
     return YES;
     }
     */
    NSString *object1;
    for (int i = 0; i < [list count]; i++){
        object1 =[[list objectAtIndex:0] firstName];
        NSLog(@"Persons:%@", object1);
        return YES;
    }
    
    
    return NO;
    
}
/*
 - (NSString *) description
 {
 NSString *object1;
 for (int i = 0; i < [list count]; i++)
 object1 =[[list objectAtIndex:i] firstName];
 
 return(@"Persons:", object1);
 }  // description
 */

@end
