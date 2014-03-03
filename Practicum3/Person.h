///
/// Person.h
/// Practicum 3
/// Description: Header file for Person class
/// Created by Chris Kondrat
/// Partners: John Huttlinger, Toby March, Calvin Chestnut
///

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
