///
///  allPeopleTableViewController.m
///  Practicum3
///  Description: Dispays a TableView populated by all People in shared PersonList
///  Created by Calvin Chestnut
///  Partners: Toby March, Chris Kondrat, John Huttlinger
///  Algorithm:
///      Gets the sharedList
///      Creates a table with one section
///      Creates a Row for each Person in PersonList
///      Sets the Row's Title with the Person's first and last name
///      Sets the Row's subtitle with the Person Type and their ID number
///      Handles Row selection
///

#import "allPeopleTableViewController.h"

@interface allPeopleTableViewController ()

@end

@implementation allPeopleTableViewController

@synthesize list;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

/**
 * Function: viewWillAppear:
 * Purpose: Makes sure that the List object is always available on load
 * Input:
 *      BOOL animated
 * Output:
 *      none
 * Properties Modified:
 *      list
 */
-(void)viewWillAppear:(BOOL)animated{
    //Sets the list attribute to the SharedList in the SEListSingleton
    list = [[SEListSingleton sharedList] getList];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return list.list.count;
}

/**
 * Function: tableView: cellForRowAtIndexPath;
 * Purpose: References PersonList and fills a UITableViewCell to the table view to insert
 * Input:
 *      UITableView
 *      NSIndexPath
 * Output:
 *      UITableViewCell
 * Properties Modified:
 *      none
*/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //PersonCell is the identifier of the Cell Template in the Storyboard
    static NSString *CellIdentifier = @"PersonCell";
    //Creates new cell instance from the Reusable Cell Template PersonCell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    //Formats first and last names for the current Person in the list
    NSString *name = [NSString stringWithFormat:@"%@ %@",[[[list list] objectAtIndex:indexPath.row] firstName],[[[list list] objectAtIndex:indexPath.row] lastName]];
    //Sets main text to their name
    [[cell textLabel] setText:name];
    //Sets subtitle Text
    //Use this line for Person type (Professor/Student)
    //[[cell detailTextLabel] setText:[NSString stringWithFormat:@"%@", [[[list list] objectAtIndex:indexPath.row] class]]];
    //Use this line for ID number
    //[[cell detailTextLabel] setText:[NSString stringWithFormat:@"%d", [[[list list] objectAtIndex:indexPath.row] ID]]];
    //Use this line for both!
    [[cell detailTextLabel] setText:[NSString stringWithFormat:@"%@: %d", [[[list list] objectAtIndex:indexPath.row] class], [[[list list] objectAtIndex:indexPath.row] ID]]];
    
    return cell;
}

/**
 * Function: tableView: didSelectRowAtIndexPath:
 * Purpose: This function responds to Row Selection
 * Input:
 *      UITableView
 *      NSIndexPath
 * Output:
 *      none
 * Properties Modified:
 *      none
 
*/
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //Creates a new ViewController to be called
    UIViewController *detail;
    
    //Checks if Person selected is a Student or Professor
    if ([[[list list] objectAtIndex:indexPath.row] isKindOfClass:[Student class]]){
        //If student
        
        //Detail inherits from VC StudentDetail
        detail = [self.storyboard instantiateViewControllerWithIdentifier:@"StudentDetail"];
    } else {
        //If professor
        
        //Detail inherits from VC ProfessorDetail
        detail = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfessorDetail"];
    }
    
    //Sets title of the new view to the Person's ID
    //Will be used to gather Person data in the new ViewController
    NSString *title = [NSString stringWithFormat:@"%d",[[[list list] objectAtIndex:indexPath.row] ID]];
    detail.title = title;
    
    //Tells the navigationController to push the Detail view
    [self.navigationController pushViewController:detail animated:YES];
    
    //Animate Row deselection
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
