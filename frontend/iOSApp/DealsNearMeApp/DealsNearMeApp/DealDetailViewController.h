//
//  DealDetailViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapDeal.h"

@class DealDetailViewController;


@interface DealDetailViewController : UIViewController

- (IBAction)buttonBackTapped:(id)sender;

@property (nonatomic, strong) MapDeal *mapDeal;

@end
