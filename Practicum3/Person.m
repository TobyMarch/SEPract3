///
///Person.h
///Practicum 3
///Description: Header file for Person class
///Created by Chris Kondrat
///Partners: John Huttlinger, Toby March, Calvin Chestnut
///
///Algorithim:
///
///

#import "Person.h"

@implementation Person
@synthesize firstName, lastName, ID;

/**
 * Function: init
 * Purpose: Default constructor
 * Inputs:
        none
 * Output:
        id self - instance of Person class
 * Properties modified:
        firstName, lastName, ID
 */
- (id) init{
	self = [super init];
	if (self) {
		firstName = @"";
		lastName = @"";
		ID = 0;
	}
	return self;
}


/**
 * Function: initWithfName
 * Purpose: Constructor
 * Inputs:
        NSString* firstNameIn - First name
        NSString* lastNameIn - Last name
        int IDin - ID number
 * Output:
        id self - instance of Person class
 * Properties modified:
        firstName, lastName, ID
 */
-(id) initWithfName:(NSString *)firstNameIn andlName:(NSString *)lastNameIn andID:(int)IDin
{
	self = [super init];
	if (self) {
		firstName = firstNameIn;
		lastName = lastNameIn;
		ID = IDin;
		return self;
	}
    	return nil;
}
@end
