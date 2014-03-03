//
/// removePersonViewController.m
/// Practicum 3
/// Description: removePersonViewController class
/// Created by John Huttlinger
/// Partners: Chris Kondrat, TOby March, Calvin Chestnut
/// Algorithim:
///     Manages the removePerson View based on users interaction with the window
///     This views code focuses primarily on retrieving user input from the text field named idInput
///     and removing the individual (should he/she exist in the list at the time) for the roster when
///     the UI Button on this scripts view in pressed down. The user is alerted with a pop-up message
///

#import "removePersonViewController.h"

@interface removePersonViewController ()

@end

@implementation removePersonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.list = [[SEListSingleton sharedList] getList];
}

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

/**Function: removePerson
 * Purpose: Remove person with specified ID from list
 * Input:
        UIButton* sender - button action
 * Output:
        none
 * Properties modifed:
        list
 */
- (IBAction)removePerson:(UIButton *)sender {
/// initialize alert
    UIAlertView *result = [UIAlertView alloc];
/// attempt to remove person with specifed ID
    if([_list removePerson:self.idInput.text.intValue]){
///     show success alert
        result = [result initWithTitle:@"Success!" message:@"Person successfully removed" delegate:self cancelButtonTitle:@"Great!" otherButtonTitles:nil, nil];
        [result show];
    }
    else{
///     show failure alert
        result = [result initWithTitle:@"Failed" message:@"No person with that ID found" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [result show];
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if ([alertView.title isEqualToString:@"Success!"]){
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

/**
 * Function: touchesBegan
 * Purpose: Hides the keyboards of the text fields on the current view whenever a user touches
 *      anywhere outside the keyboard when entering text/numbers into any text field SOLELY on this view
 * Input:
 *      User touch
 * Output:
 *      none
 * Properties Modified:
 *      none
 */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_idInput resignFirstResponder];
}

@end
