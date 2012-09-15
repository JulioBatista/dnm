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

@end
