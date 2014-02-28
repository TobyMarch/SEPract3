//
//  Professor.cpp
//  Practicum 1
//
//  Created by Calvin Chestnut
//  Partners: Toby March, Chris Kondrat, John Huttlinger
//
//
//  This file impliments the methods defined in Professor.h
//
//

//Includes declarations made in Professor.h
#import "Professor.h"

@implementation Professor
@synthesize tenure, isFaculty, salary, department;
/*
 method: Professor Constructor
 purpose: Create an instance of a Professor object
 parameters:
 string firstIn - Passed to Person constructor to be set as firstName
 string lastIn - Passed to Person constructor to be set as lastName
 int idIn - Passed to Person constructor to be set as id
 return value: none
 properties modified-
 Professor object is created
 precondition: none
 notes:
 bool tenure set to default value
 no other Professor specific attributes set initially
 */

- (id) initWithFirstName: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) IDin andTenured: (BOOL) tenuredIn{
    
    
    if (self = [super init]) {
        firstName = firstNameIn;
        lastName = lastNameIn;
        ID = IDin;
        tenure = tenuredIn;
        return (self);
    }
    return nil;
}

@end