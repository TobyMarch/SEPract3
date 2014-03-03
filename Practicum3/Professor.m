///
/// Person.h
/// Practicum 3
/// Description: Professor class
/// Created by Calvin Chestnut
/// Refractored by John Huttlinger
/// Partners: John Huttlinger, Toby March, Calvin Chestnut
/// Modifications:
///     Removed unused method. Removed unused variables. Modified constructor
///

#import "Professor.h"

@implementation Professor
@synthesize tenure, salary, department;


/** Function: initWithFirstName
 * Purpose: Constructor
 * Input:
        NNString* firstNameIn - First name
        NSString* lastNameIn - Last name
        int IDin - ID number
        BOOL tenuredIn - Tenure status
        double salaryIn - Salary
        NSString* deptIn - Department
 * Output:
        id self - instance of Professor class
 * Properties modified:
        salary = salaryIn
        department = deptIn
        tenure = tenuredIn
 */
- (id) initWithFirstName: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) IDin andTenured: (BOOL) tenuredIn andSalary:(double)salaryIn andDept:(NSString *)deptIn{
    //call super class constructor
    if (self = [super initWithfName:firstNameIn andlName:lastNameIn andID:IDin]) {
        //set properties to inputs
        salary = salaryIn;
        department = deptIn;
        tenure = tenuredIn;
        return (self);
    }
    return nil;
}

@end