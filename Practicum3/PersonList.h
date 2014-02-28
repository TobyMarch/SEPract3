//
//  PersonList.h
//  Purpose: Manage a NSMutable Array object that stores students/professors.
//  Created by John Huttlinger
//  Edited by Matthew Kercher on 2/9/14, 2/13/14
//      - Refactored for Objective-C, changed from linked list to NSMutableArray
//      - Removed search function and getHead function.
//

#import <Foundation/Foundation.h>
#import "Person.h"


@interface PersonList : NSObject{
    NSMutableArray *list; //array for Person objects
}

@property (nonatomic, retain) NSMutableArray *list;

/*
 Function: PersonList
 Purpose: Constructor of PersonList object
 Inputs: none
 Outputs: none
 Properties modified: Creates NSMutableArray *list
 Precondition: None
 */

- (id)init;

/*
 Function: addPerson
 Purpose: Create node holding person passed in and add it to list
 Inputs: Person* personIn - person to be added to list
 Outputs: BOOL - YES if successful, NO if not
 Properties modified: Creates Person object, adds to array.
 Precondition: None
 */

- (BOOL) addPerson: (Person*) personIn;

/*
 Function: removePerson
 Purpose: Removes Person object from list* array
 Inputs: int idIn - the ID of a Person object to be removed
 Outputs: BOOL - YES if successful, NO if not
 Properties modified: Removes Person* object from list* array
 Precondition: List must not be empty
 */
- (BOOL) removePerson: (int) IDin;

- (BOOL) find: (int) IDin;

- (id) returnPerson: (int) IDin;

- (BOOL) printList;



@end
