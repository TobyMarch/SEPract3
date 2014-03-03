///
///Person.h
///Practicum 3
///Description: Header file for PersonList class
///Created by John Huttlinger
///Refactored by John Huttlinger
///Partners: Chris Kondrat, Toby March, Calvin Chestnut
///
///Modifications:
///     Removed useless method. Replaced with two new methods.
///Algorithim:
///     Manages list of Person objects
///

#import <Foundation/Foundation.h>
#import "Person.h"


@interface PersonList : NSObject{
/// declare NSMutableArray to hold Person objects
    NSMutableArray *list;
}

@property (nonatomic, retain) NSMutableArray *list;

- (id)init;
- (BOOL) addProfessorWithSalary:(double)salaryIn andTenured:(BOOL)tenuredIn andDept:(NSString*)deptIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn;
- (BOOL) addStudentWithMajor: (NSString *)majorIn andYear:(int)yearIn andGpa:(double)gpaIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn;
- (BOOL) removePerson: (int) IDin;
- (BOOL) findPerson: (int) IDin;
- (id) returnPerson: (int) IDin;



@end
