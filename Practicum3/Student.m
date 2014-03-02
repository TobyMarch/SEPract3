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

@synthesize major, gpa, gradYear;
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

- (id) initWithFirstName: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) idIn andMajor:(NSString *)majorIn andYear:(int)yearIn andGPA:(double)gpaIn;{
	if (self = [super initWithfName:firstNameIn andlName:lastNameIn andID:idIn]) {
		major = majorIn;
        gpa = gpaIn;
        gradYear = yearIn;
        
		return (self);
	}
	return nil;
	
} // init

@end