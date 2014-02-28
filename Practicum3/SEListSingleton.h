//
// SEListSingleton.h
// Practicum 3
//
// Created by Toby March on 2/25/14
//

#import <Foundation/Foundation.h>
#import "PersonList.h"

@interface SEListSingleton : NSObject {
	PersonList *personList;
}

+(SEListSingleton *) sharedList;

-(void)setList:(PersonList *) listIn;

-(PersonList *)getList;

@end