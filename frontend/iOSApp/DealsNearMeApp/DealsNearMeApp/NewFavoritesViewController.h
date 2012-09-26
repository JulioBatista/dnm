//
//  NewFavoritesViewController.h
//  DealsNearMeApp
//
//  Created by  on 9/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewFavoritesViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
	UITableViewController *myTableViewController;
	
	UITableView *favoritesTableView;
}
@property (strong, nonatomic) IBOutlet UITableView *favoritesTableView;


@property (nonatomic, assign) UITableViewController *myTableViewController;

@property (nonatomic, strong) NSMutableArray *favoriteDeals;




@end
