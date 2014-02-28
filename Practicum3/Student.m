//
//  Student.cpp
//  Practicum 1
//
//  Created by Calvin Chestnut
//  Partners: Toby March, Chris Kondrat, John Huttlinger
//
//  This file impliments the methods defined in Student.h
//
//

//Includes declarations from Student.h
#import "Student.h"

@implementation Student
@synthesize gpa, gradYear, major, isFaculty;
/*
 method: Student Constructor
 purpose:  Create an instance of a Student object
 parameters:
 string firstIn - Passed to Person constructor to be set as firstName
 string lastIn - Passed to Person constructor to be set as lastName
 int idIn - Passed to Person constructor to be set as id
 return value: none
 properties modified:
 Student object is created
 precondition: none
 notes:
 no Student specific attributes set initially
 */

- (id) initWithParam: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) idIn;
{
	if (self = [super init]) {
		firstName = @"";
		lastName = @"";
		ID = 0;
        
		return (self);
	}
	return nil;
	
} // init

@end