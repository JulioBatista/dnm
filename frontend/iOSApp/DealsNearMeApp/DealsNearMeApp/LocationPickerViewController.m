//
//  LocationPickerViewController.m
//  DealsNearMeApp
//
//  Created by Das on 2012-08-29.
//
//

#import "LocationPickerViewController.h"

@interface LocationPickerViewController ()

@end

@implementation LocationPickerViewController
{
    NSArray *cities;
    NSUInteger selectedIndex;
}
@synthesize delegate = _delegate;
@synthesize city = _city;
@synthesize allZipCodes = _allZipCodes;
@synthesize searchResults = _searchResults;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    cities = [NSArray arrayWithObjects:@"Atlanta, GA",
              @"New York City, NY",
              @"Austin, TX",
              @"Boston, MA",
              @"Chicago, IL",
              @"Los Angeles, CA",
              @"Miami, FL",
              @"Philadelphia, PA",
              @"Seattle, Washington",
              @"Washington, D.C.",
			  @"Toronto, ON",
              nil];
    
    
    NSArray *zipCodes = [[NSArray alloc] initWithObjects:@"90210",
                         @"90211",
                         @"90212",
                         @"90213",
                         nil];
    
    self.allZipCodes = zipCodes;
    
    selectedIndex = [cities indexOfObject:self.city];
    
    
    
    
}

- (void)viewDidUnload
{

    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
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
    return [cities count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"LocationPickerCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    
    
    
    if ([self.tableView isEqual:self.searchDisplayController.searchResultsTableView])
    {
        cell.textLabel.text = [self.searchResults objectAtIndex:indexPath.row];
    }
    
    else
    {
        cell.textLabel.text = [cities objectAtIndex:indexPath.row];
    }
    
    
    
    if (indexPath.row == selectedIndex)
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (selectedIndex != NSNotFound)
    {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:selectedIndex inSection:0]];
        
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    selectedIndex = indexPath.row;
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    NSString *theCity = [cities objectAtIndex:indexPath.row];
    
    [self.delegate locationPickerViewController:self didSelectCity:theCity];
    
    
}

- (IBAction)cancel:(id)sender
{
    [self.delegate locationPickerViewControllerDidCancel:self];
}

- (void) filterContentForSearchText:(NSString *)searchText
                              scope:(NSString *) scope
{
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"SELF contains[cd] %@", searchText];
    
    self.searchResults = [self.allZipCodes filteredArrayUsingPredicate:resultPredicate];
}


#pragma mark UISearchBarDelegate methods




@end

















