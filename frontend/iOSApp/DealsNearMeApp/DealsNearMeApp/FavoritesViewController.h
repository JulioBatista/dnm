//
//  FavoritesViewController.h
//  DealsNearMeApp
//
//  Created by  on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FavoritesViewController : UITableViewController
@property (nonatomic, strong) NSArray *photos;


- (IBAction)doRefresh:(UIBarButtonItem *)sender;
@end
