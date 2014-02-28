//
//  allPeopleTableViewController.m
//  Practicum3
//
//  Created by Calvin Chestnut on 2/28/14.
//  Copyright (c) 2014 Ithaca College. All rights reserved.
//
//  Displays all People currently stored in the PersonListSingleton
//  Has one section, and as many rows as there are People in the PersonList
//  Each cell is populated with the Person's information, and returned to the TableView to draw
//  On select the Cell currently does nothing
//

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

-(void)viewWillAppear:(BOOL)animated{
    list = [[SEListSingleton sharedList] getList];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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

/*
 tableView: cellForRowAtIndexPath;
 Returns a UITableViewCell to the table view to insert
 References the PersonList in the Singleton for Data
*/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //PersonCell is the identifier of the Cell Template I made in the Storyboard
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
    [[cell detailTextLabel] setText:[NSString stringWithFormat:@"%@", [[[list list] objectAtIndex:indexPath.row] class]]];
    //Use this line for ID number
    //[[cell detailTextLabel] setText:[NSString stringWithFormat:@"%d", [[[list list] objectAtIndex:indexPath.row] ID]]];
    
    return cell;
}

/*
    This is where we can do custom actions on click
 
*/
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
