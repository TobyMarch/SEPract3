//
// SEListSingleton.m
// Practicum 3
//
// Created by Toby March on 2/25/14
// 

#import "SEListSingleton.h"

static SEListSingleton *personList;

@implementation SEListSingleton

-(id)init {
	self = [super init];
	personList = [List new];
	return self;
}

+(SEListSingleton *) sharedList {
	if (!personList) {
		personList = [[SEListSingleton alloc] init];
	}
	return personList;
}

-(void)setList:(List *) listIn {
	personList = listIn;
}

-(List *)getList {
	return personList;
}
@end