//
//  SettingsScreenViewController.h
//  DealsNearMeApp
//
//  Created by Das on 9/16/12.
//
//

#import <UIKit/UIKit.h>

@interface SettingsScreenViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
	UITableViewController *myTableViewController;
	
	UITableView *settingsTableView;
}

@property (strong, nonatomic) IBOutlet UITableView *settingsTableView;

@property (nonatomic, strong) UITableViewController *myTableViewController;


- (IBAction)buttonBackButtonPressed:(id)sender;

@end
