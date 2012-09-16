//
//  NewMoreViewController.m
//  DealsNearMeApp
//
//  Created by Das on 9/14/12.
//
//

#import "NewMoreViewController.h"

@interface NewMoreViewController ()

@end

@implementation NewMoreViewController
@synthesize tableViewMoreTableView = _tableViewMoreTableView;
@synthesize delegate = _delegate;
@synthesize myTableViewController = _myTableViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	self.tableViewMoreTableView.delegate = self;
	
	self.tableViewMoreTableView.dataSource = self;
	
	self.myTableViewController = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
	
	
	self.myTableViewController.tableView = self.tableViewMoreTableView;
	
	
	
}

- (void)viewDidUnload
{
	[self setTableViewMoreTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	switch (indexPath.row)
	{
		case 0:
		{
			[self performSegueWithIdentifier:@"FromMoreToMyProfileSegue" sender:self];
			break;
		}
		case 1:
		{
			break;
		}
		default:
			break;
	}
}

#pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"NewMoreCell";
    UITableViewCell *cell = (UITableViewCell *)[self.tableViewMoreTableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	return cell.frame.size.height;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	NSLog(@"Is this being called");
	return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
	static NSString *CellIdentifier = @"NewMoreCell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	if (cell == nil)
	{
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
	}
	
	UILabel *titleLabel = (UILabel *)[cell viewWithTag:901];
	
	switch (indexPath.row)
	{
		case 0:
		{
			NSLog(@"cellForRowAtIndexPath");
			titleLabel.text = @"My Profile";
			break;
		}
			
		case 1:
		{
			titleLabel.text = @"Settings";
			break;
		}
		
		case 2:
		{
			titleLabel.text = @"Submit Your Business";
			break;
		}
			
		case 3:
		{
			titleLabel.text = @"About";
			break;
		}
			
		default:
			break;
	}
	
	return cell;
	
	
}


@end
