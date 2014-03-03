///
/// Person.h
/// Practicum 3
/// Description: Header file for PersonList class
/// Created by John Huttlinger
/// Refactored by John Huttlinger
/// Partners: Chris Kondrat, Toby March, Calvin Chestnut
/// Modifications:
///     Removed useless method. Replaced with two new methods.
///

#import "PersonList.h"
#import "Professor.h"
#import "Student.h"

@implementation PersonList

@synthesize list;

/** Function: init
 * Purpose: Constructor
 * Inputs:
        none
 * Outputs:
        id self - instance of PersonList class
 */
- (id) init{
    if (self = [super init]) {
///     initialize NSMutableArray
        list = [[NSMutableArray alloc] init];
        return self;
    }
    return nil;
}

/** Function: addProfessorWithSalary
 * Purpose: create new Professor from input and add to list
 * Input:
        double salaryIn - Salary
        BOOL tenuredIn - Tenure status
        NSString* deptIn - Department
        NSString* firstNameIn - First Name
        NSString* lastNameIn - Last Name
        int inId - ID Number
 * Output:
        BOOL - Success or failure
 * Properties modified:
        list
 */
- (BOOL) addProfessorWithSalary:(double)salaryIn andTenured:(BOOL)tenuredIn andDept:(NSString *)deptIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn{
/// checks for existing person with idIn
    if(![self findPerson:idIn]){
///     creates new Professor from inputs and adds to list
        [list addObject: [[Professor alloc] initWithFirstName:firstNameIn andLastName:lastNameIn andID:idIn andTenured:tenuredIn andSalary:salaryIn andDept:deptIn]];
        return YES;
    }
    return NO;
}

/** Function: addStudentWithMajor
 * Purpose: create new Student from input and add to list
 * Input:
        double gpaIn - Grade point average
        NSString* majorIn - Major
        NSString* firstNameIn - First Name
        NSString* lastNameIn - Last Name
        int inId - ID Number
 * Output:
        BOOL - Success or failure
 * Properties modified:
        list
 */
- (BOOL) addStudentWithMajor:(NSString *)majorIn andYear:(int)yearIn andGpa:(double)gpaIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn{
/// checks for existing person with idIn
    if(![self findPerson:idIn]){
///     creates new Student from inputs and adds to list
        [list addObject:[[Student alloc] initWithFirstName:firstNameIn andLastName:lastNameIn andID:idIn andMajor:majorIn andYear:yearIn andGPA:gpaIn]];
        return YES;
    }
    return NO;
}

/** Function: rmeovePerson
 * Purpose: Remove person with input ID from list
 * Input:
        int IDin - ID Number
 * Output:
        BOOL - Success or failure
 * Properties modified:
        list
 */
- (BOOL) removePerson: (int) IDin;{
/// Makes sure list is not empty
    if ([list count] == 0){
        return NO;
    }
/// iterate through list until person is found. remove when found
    for (int i = 0; i < [list count]; i++){
        if ([[list objectAtIndex: i] ID] == IDin){
            [list removeObjectAtIndex: i];
            return YES;
        }
    }
    return NO;
}

/** Function: findPerson
 * Purpose: Checks list for a person with an input ID
 * Input:
        int IDin - ID number
 * Output:
        BOOL - In list or not
 * Properties modfied:
        none
 */
- (BOOL) findPerson: (int) IDin{
    for (int i = 0; i < [list count]; i++){
        if ([[list objectAtIndex: i] ID] == IDin){
            return YES;
        }
    }    return NO;
}

/**Function: returnPerson
 * Purpose: Find and return Person with input ID
 * Input:
        int IDin
 * Output:
        id - Student or Professor with input ID
 * Properties modified:
        none
 */
- (id) returnPerson: (int) IDin {
    for (int i = 0; i < [list count]; i++){
        if ([[list objectAtIndex: i] ID] == IDin){
            return [list objectAtIndex: i];
        }
    }
    return Nil;
}

@end
