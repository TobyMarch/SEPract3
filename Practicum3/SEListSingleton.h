//
// SEListSingleton.h
// Practicum 3
//
// Created by Toby March on 2/25/14
//

#import <Foundation/Foundation.h>
#import "List.h"

@interface SEListSingleton : NSObject {
	List *personList;
}

+(SEListSingleton *) sharedList;

-(void)setList:(List *) listIn;

-(List *)getList; 

@end