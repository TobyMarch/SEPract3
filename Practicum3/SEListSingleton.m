///
/// SEListSingleton.m
/// Practicum 3
/// Description: singleton class that can be created statically and called by multiple views
/// Created by Toby March on 2/25/14
/// Partners: Calvin Chestnut, John Huttlinger, Chris Kondrat
///
#import "SEListSingleton.h"

static SEListSingleton *sharedList;

@implementation SEListSingleton

-(id)init {
	self = [super init];
	personList = [PersonList new];
	return self;
}
/**
 * Function: sharedList
 * Purpose: Class method that creates reference from other views to one object
 * Input:
 *      none
 * Output:
 *      none
 * Properties Modified:
 *      none
 */
+(SEListSingleton *) sharedList {
	if (!sharedList) {
		sharedList = [[SEListSingleton alloc] init];
	}
	return sharedList;
}
/**
 * Function: setList
 * Purpose: Allows views to overwrite list in singleton
 * Input:
 *      PersonList* listIn - new list to store in singleton
 * Output:
 *      none
 * Properties Modified:
 *      none
 */
-(void)setList:(PersonList *) listIn {
	personList = listIn;
}
/**
 * Function: getList
 * Purpose: Passes contents of shared list to different views
 * Input:
 *      none
 * Output:
 *      PersonList* - list object containing all entries in roster
 * Properties Modified:
 *      none
 */
-(PersonList *)getList {
	return personList;
}
@end