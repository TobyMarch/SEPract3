//
// SEListSingleton.m
// Practicum 3
//
// Created by Toby March on 2/25/14
// 

#import "SEListSingleton.h"

static SEListSingleton *sharedList;

@implementation SEListSingleton

-(id)init {
	self = [super init];
	personList = [PersonList new];
	return self;
}

+(SEListSingleton *) sharedList {
	if (!sharedList) {
		sharedList = [[SEListSingleton alloc] init];
	}
	return sharedList;
}

-(void)setList:(PersonList *) listIn {
	personList = listIn;
}

-(PersonList *)getList {
	return personList;
}
@end