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

@interface Student : Person{
    BOOL isFaculty;
    double gpa;
    int gradYear;
    NSString *major;
}

@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, assign) int ID;
@property (nonatomic, assign) BOOL isFaculty;
@property (nonatomic, assign) double gpa;
@property (nonatomic, assign) int gradYear;
@property (nonatomic, retain) NSString *major;

- (id) initWithParam: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) idIn;

- (double) getGpa;
- (int) getGradYear;
- (NSString *) getMajor;

- (void) setGpa: (double) gpaIn;
- (void) setGradYear: (int) yearIn;
- (void) setMajor: (NSString *) majorIn;

@end