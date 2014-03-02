//
//  Student.h
//  Practicum 1
//
//  Created by Calvin Chestnut
//  Partners: Toby March, Chris Kondrat, John Huttlinger
//
//  This file defines the Student subclass and its attributes and methods
//
//  The attributes firstName, lastName, and id are stored in the Person class
//  The six methods defined override virtual methods in the Person class
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person
@property (nonatomic, assign) double gpa;
@property (nonatomic, assign) int gradYear;
@property (nonatomic, retain) NSString *major;

- (id) initWithFirstName: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) idIn andMajor: (NSString *) majorIn andYear: (int) yearIn andGPA: (double) gpaIn;

@end