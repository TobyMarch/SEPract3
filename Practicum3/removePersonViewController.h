///
/// removePersonViewController.h
/// Practicum 3
/// Description: Header file removePersonViewController
/// Created by John Huttlinger
/// Partners: Chris Kondrat, Toby March, Calvin Chestnut
/// Algorithim:
///     Manages the removePerson View based on users interaction with the window
///     This views code focuses primarily on retrieving user input from the text field named idInput
///     and removing the individual (should he/she exist in the list at the time) for the roster when
///     the UI Button on this scripts view in pressed down. The user is alerted with a pop-up message
///     on the success or failure of the removal process
///

#import <UIKit/UIKit.h>
#import "SEListSingleton.h"

@interface removePersonViewController : UIViewController <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *idInput;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;

@property (weak, nonatomic) PersonList *list;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (IBAction)removePerson:(UIButton *)sender;

@end
