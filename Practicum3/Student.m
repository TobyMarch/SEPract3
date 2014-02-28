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

/*
 method: getMajor()
 purpose: Get Student instance's major attribute
 parameters: none
 return value:
 string major
 properties modified: none
 precondition:
 Major attribute has been set with the setMajor() method
 notes:
 Overrides method in the Person class
 */
- (NSString *) getMajor{
    return major;
}

/*
 method: getGpa()
 purpose: Get Student instance's gpa attribute
 parameters: none
 return value:
 double gpa
 properties modified: none
 precondition:
 Gpa attribute has been set with the setGpa() method
 notes:
 Overrides method in the Person class
 */
- (double) getGpa{
    return gpa;
}

/*
 method: getGradYear()
 purpose: Get Student instance's gradYear attribute
 parameters: none
 return value:
 int gradYear
 properties modified: none
 precondition:
 gradYear attribute has been set with the setGradYear() method
 notes:
 Overrides method in the Person class
 */
- (int) getGradYear{
    return gradYear;
}

/*
 method: setGradYear()
 purpose: Set Student instance's gradYear attribute
 parameters:
 int yearIn
 return value: none
 properties modified:
 Student instances gradYear attribute
 precondition: none
 notes:
 Overrides method in the Person class
 */
- (void) setGradYear: (int) yearIn{
    gradYear = yearIn;
}

/*
 method: setMajor()
 purpose: Set Student instance's department attribute
 parameters:
 string majorIn
 return value: none
 properties modified:
 Student instance's major attribute
 precondition: none
 notes:
 Overrides method in the Person class
 */
- (void) setMajor: (NSString *) majorIn{
    major = majorIn;
}

/*
 method: setGpa()
 purpose: Set Student instance's gpa attribute
 parameters:
 double gpaIn
 return value: none
 properties modified:
 Student instance's gpa attribute
 precondition: none
 notes:
 Overrides method in the Person class
 */
- (void) setGpa: (double) gpaIn{
    gpa = gpaIn;
}

@end