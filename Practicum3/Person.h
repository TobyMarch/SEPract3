//
//  Person.h
//  hello-obj-c-classes
//
//  Created by lab on 2/6/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    
    NSString* firstName;
    NSString* lastName;
    int ID;
    
}

@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, assign) int ID;

-(id) init;
-(id) initWithfName: (NSString *)firstNameIn andlName: (NSString *)lastNameIn andID: (int) IDin ;

@end
