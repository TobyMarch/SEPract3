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


- (BOOL) addProfessorWithSalary:(double)salaryIn andTenured:(BOOL)tenuredIn andDept:(NSString*)deptIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn;

- (BOOL) addStudentWithMajor: (NSString *)majorIn andYear:(int)yearIn andGpa:(double)gpaIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn;

/*
 Function: removePerson
 Purpose: Removes Person object from list* array
 Inputs: int idIn - the ID of a Person object to be removed
 Outputs: BOOL - YES if successful, NO if not
 Properties modified: Removes Person* object from list* array
 Precondition: List must not be empty
 */
- (BOOL) removePerson: (int) IDin;

/*
 * Function: findPerson
 * Purpose: indicates whether entry with given ID exists within the list
 * Input:
 int IDin - integer value of entry's ID number
 * Output:
 bool value YES if found, NO if not
 * Properties Modified:
 none
 */
- (BOOL) findPerson: (int) IDin;

/*
 * Function: returnPerson
 */
- (id) returnPerson: (int) IDin;



- (BOOL) printList;



@end
