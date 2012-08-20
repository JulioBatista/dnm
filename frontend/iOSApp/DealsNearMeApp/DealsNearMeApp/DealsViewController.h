//
//  DealsViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DealsViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *deals;

- (IBAction)buttonMapPressed:(id)sender;


@end
