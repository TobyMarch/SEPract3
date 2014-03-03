///
/// Person.h
/// Practicum 3
/// Description: Student class
/// Created by Calvin Chestnut
/// Refractored by John Huttlinger
/// Partners: John Huttlinger, Toby March, Calvin Chestnut
/// Modifications:
///     Removed unused method. Removed unused variables. Modified constructor
///

#import "Student.h"

@implementation Student

@synthesize major, gpa, gradYear;

/** Function: initWithFirstName
 * Purpose: Constructor
 * Input:
        NNString* firstNameIn - First name
        NSString* lastNameIn - Last name
        int IDin - ID number
        NSString* majorIn - Major
        int yearIn - Graduation year
        double gpaIn - Grade point average
 * Output:
        id self - instance of Student class
 * Properties modified:
        firstName = firstNameIn
        lastName = lastNameIn
        ID = IDin
        major = majorIn
        gpa = gpaIn
        gradYear = yearIn
 */
- (id) initWithFirstName: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) idIn andMajor:(NSString *)majorIn andYear:(int)yearIn andGPA:(double)gpaIn;{
/// call super class constructor
	if (self = [super initWithfName:firstNameIn andlName:lastNameIn andID:idIn]) {
///     set properties to inputs
		major = majorIn;
        gpa = gpaIn;
        gradYear = yearIn;
        
		return (self);
	}
	return nil;
	
}

@end