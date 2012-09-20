//
//  MyProfileScreenViewController.m
//  DealsNearMeApp
//
//  Created by Das on 9/15/12.
//
//

#import "MyProfileScreenViewController.h"

@interface MyProfileScreenViewController ()
{
	
}

@end

@implementation MyProfileScreenViewController
@synthesize myProfileTableView;


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
	
	myTableViewController = [[UITableViewController alloc] initWithStyle:UITableViewStyleGrouped];
	
	myTableViewController.tableView = myProfileTableView;
	
	self.myProfileTableView.delegate = self;
	
	self.myProfileTableView.dataSource = self;
}

- (void)viewDidUnload
{
	
	[self setMyProfileTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark UITableViewDataSource


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	
    // Return the number of sections.
	
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	
	return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	
	
	static NSString *CellIdentifier = @"MyProfileCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
	
	if (indexPath.section == 0)
	{
		
		cell.textLabel.text = @"First Name";
		
		cell.detailTextLabel.text = @"Levi Bergovoy";
	}
	else if (indexPath.section == 1)
	{
		cell.textLabel.text = @"City";
		
		cell.detailTextLabel.text = @"Chicago";
		
	}
	
	else
	{
		
	}
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	
	if (section == 0)
	{
		return @"Name";
	}
	if (section == 1)
	{
		return @"Location";
	}
	else
	{
		return 0;
	}
}

#pragma mark UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}


- (IBAction)buttonBackButtonPressed:(id)sender
{
	[self.navigationController popViewControllerAnimated:YES];
}



@end
