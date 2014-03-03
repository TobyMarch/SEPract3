///
/// Person.h
/// Practicum 3
/// Description: Header file for Person class
/// Created by Chris Kondrat
/// Partners: John Huttlinger, Toby March, Calvin Chestnut
///


#import <UIKit/UIKit.h>
#import "SEListSingleton.h"

@interface findPersonViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *idIn;
@property (weak, nonatomic) IBOutlet UILabel *informationLabel;

@property (weak, nonatomic) PersonList *list;

- (IBAction)findPerson:(id)sender;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end
