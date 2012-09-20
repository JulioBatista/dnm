//
//  SettingsScreenViewController.m
//  DealsNearMeApp
//
//  Created by Das on 9/16/12.
//
//

#import "SettingsScreenViewController.h"

@interface SettingsScreenViewController ()

@end

@implementation SettingsScreenViewController
@synthesize settingsTableView;

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
	
	myTableViewController.tableView = settingsTableView;
	
	self.settingsTableView.delegate = self;
	
	self.settingsTableView.dataSource = self;
	

}

- (void)viewDidUnload
{
	[self setSettingsTableView:nil];
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
	
	
	static NSString *CellIdentifier = @"SettingsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
	

    if (indexPath.section == 0)
	{
		cell.textLabel.text = @"System Version";
		cell.detailTextLabel.text = [[UIDevice currentDevice] systemName];
	}
	else if (indexPath.section == 1)
	{
		cell.textLabel.text = @"Model";
		cell.detailTextLabel.text = [[UIDevice currentDevice] systemVersion];
		
	}
	
    
	
	
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	
	if (section == 0)
	{
		return @"System Version";
	}
	if (section == 1)
	{
		return @"Model";
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
