//
//  MyProfileScreenViewController.h
//  DealsNearMeApp
//
//  Created by Das on 9/15/12.
//
//

#import <UIKit/UIKit.h>

@interface MyProfileScreenViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
	UITableViewController *myTableViewController;
	
	UITableView *myProfileTableView;
}


- (IBAction)buttonBackButtonPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *myProfileTableView;

@property (nonatomic, retain) UITableViewController *myTableViewController;



@end
