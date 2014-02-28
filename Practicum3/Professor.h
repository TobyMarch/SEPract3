//
//  Professor.h
//  Practicum 1
//
//  Created by Calvin Chestnut
//  Partners: Toby March, Chris Kondrat, John Huttlinger
//
//  This file defines the Professor class, which extends the Person class, and it's attributes and methods
//
//  The attributes firstName, lastName, and id are stored in the Person class
//  The six methods defined override virtual methods in the Person class
//

#import <Foundation/Foundation.h>

#import "Person.h"

@interface Professor : Person{
    BOOL isFaculty;
    double salary;
    BOOL tenure;
    NSString *department;
}

@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, assign) int ID;
@property (nonatomic, assign) BOOL isFaculty;
@property (nonatomic, assign) double salary;
@property (nonatomic, assign) BOOL tenure;
@property (nonatomic, retain) NSString *department;

- (id) initWithParam: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn andID: (int) IDin andTenured: (BOOL) tenuredIn;
- (double) getSalary;
- (BOOL) isTenured;
- (NSString *) getDepartment;
- (void) setSalary: (double) salaryIn;
- (void) setTenure: (BOOL) tenuredIn;
- (void) setDepartment: (NSString *) departmentIn;
                              
@end