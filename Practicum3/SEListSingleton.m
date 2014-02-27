//
// SEListSingleton.m
// Practicum 3
//
// Created by Toby March on 2/25/14
// 

#import "SEListSingleton.h"

static List *personList;

@implementation SEListSingleton

-(id)init {
	self = [super init];
	personList = [List new];
	return self;
}

+(SEListSingleton *) sharedList {
	if (!sharedList) {
		sharedList = [[SEListSingleton alloc] init];
	}
	return sharedList;
}

-(void)setList:(List *) listIn {
	personList = listIn;
}

-(List *)getList {
	return personList;
}
@end