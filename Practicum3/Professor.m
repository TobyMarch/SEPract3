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

- (id) initWithParam: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) IDin andTenured: (BOOL) tenuredIn{
    
    
    if (self = [super init]) {
        firstName = @"";
        lastName = @"";
        ID = 0;
        tenure = false;
        return (self);
    }
    return nil;
}

/*
 method: getDepartment()
 purpose: Get Professor instance's department attribute
 parameters: none
 return value:
 string department
 properties modified: none
 precondition:
 Department attribute has been set with the setDepartment() method
 notes:
 Overrides method in the Person class
 */
- (NSString *) getDepartment{
    return department;
}

/*
 method: getSalary()
 purpose: Get Professor instance's salary attribute
 parameters: none
 return value:
 double salary
 properties modified: none
 precondition:
 Salary attribute has been set with the setSalary() method
 notes:
 Overrides method in the Person class
 */
- (double) getSalary{
    return salary;
}

/*
 method: isTenured()
 purpose: Get Professor instance's tenure attribute
 parameters: none
 return value:
 bool tenure
 properties modified: none
 precondition: none
 notes:
 Overrides method in the Person class
 */
- (BOOL) isTenured{
    return tenure;
}

/*
 method: setDepartment()
 purpose: Set Professor instance's department attribute
 parameters:
 string departmentIn
 return value: none
 properties modified-
 Professor object's department attribute
 precondition: none
 notes:
 Overrides method in the Person class
 */
- (void) setDepartment: (NSString *) departmentIn;{
    department = departmentIn;
}

/*
 method: setSalary()
 purpose: Set Professor instance's salary attribute
 parameters:
 double salaryIn
 return value: none
 properties modified:
 Professor object's salary attribute
 precondition: none
 notes:
 Overrides method in the Person class
 */
- (void) setSalary: (double) salaryIn;{
    salary = salaryIn;
}

/*
 method: setTenure()
 purpose: Set Professor instance's tenure attribute
 parameters:
 bool tenureIn
 return value: none
 properties modified-
 Professor object's tenure attribute
 precondition: none
 notes:
 Overrides method in the Person class
 */
- (void) setTenure: (BOOL) tenureIn;{
    tenure = tenureIn;
}

@end