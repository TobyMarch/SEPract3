///
///Person.h
///Practicum 3
///Description: Header file for Professor class
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

@interface Professor : Person
@property (nonatomic, assign) double salary;
@property (nonatomic, assign) BOOL tenure;
@property (nonatomic, retain) NSString *department;

- (id) initWithFirstName: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) IDin andTenured: (BOOL) tenuredIn andSalary:(double) salaryIn andDept: (NSString *) deptIn;

@end