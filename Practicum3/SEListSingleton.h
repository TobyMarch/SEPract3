///
/// SEListSingleton.h
/// Practicum 3
/// Description: header file for singleton class that can be created statically and called by multiple views
/// Created by Toby March on 2/25/14
/// Partners: Calvin Chestnut, John Huttlinger, Chris Kondrat
///

#import <Foundation/Foundation.h>
#import "PersonList.h"
#import "Student.h"
#import "Professor.h"

@interface SEListSingleton : NSObject {
	PersonList *personList;
}

+(SEListSingleton *) sharedList;

-(void)setList:(PersonList *) listIn;

-(PersonList *)getList;

@end