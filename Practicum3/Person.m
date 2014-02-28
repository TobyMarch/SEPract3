//
//  Person.m
//  hello-obj-c-classes
//
//  Created by lab on 2/6/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize firstName, lastName, ID;

- (id) init
{
	self = [super init];
	if (self) {
		firstName = @"";
		lastName = @"";
		ID = 0;
	}
	return self;
}

-(id) initWithfName:(NSString *)firstNameIn andlName:(NSString *)lastNameIn andID:(int)IDin
{
	self = [super init];
	if (self) {
		firstName = firstNameIn;
		lastName = lastNameIn;
		ID = IDin;
		return self;
	}
    	return nil;
}
@end
