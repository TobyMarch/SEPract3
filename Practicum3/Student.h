///
///Person.h
///Practicum 3
///Description: Header file for Student class
///Created by Calvin Chestnut
///Refractored by John Huttlinger
///Partners: John Huttlinger, Toby March, Calvin Chestnut
///
///Modifications:
///     Removed unused method. Removed unused variables. Modified constructor
///Algorithim:
///
///

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person
@property (nonatomic, assign) double gpa;
@property (nonatomic, assign) int gradYear;
@property (nonatomic, retain) NSString *major;

- (id) initWithFirstName: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) idIn andMajor: (NSString *) majorIn andYear: (int) yearIn andGPA: (double) gpaIn;

@end