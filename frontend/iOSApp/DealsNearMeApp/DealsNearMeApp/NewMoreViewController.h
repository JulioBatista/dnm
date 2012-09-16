//
//  NewMoreViewController.h
//  DealsNearMeApp
//
//  Created by Das on 9/14/12.
//
//

#import <UIKit/UIKit.h>

@interface NewMoreViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
	UITableViewController *myTableViewController;
	UITableView *tableViewMoreTableView;
	
}
@property (strong, nonatomic) IBOutlet UITableView *tableViewMoreTableView;

@property (nonatomic, weak) id<UITableViewDelegate> delegate;

@property (nonatomic, strong) UITableViewController *myTableViewController;

@end
