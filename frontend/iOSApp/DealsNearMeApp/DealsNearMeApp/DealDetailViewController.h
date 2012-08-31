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

@property (nonatomic, strong) NSNumber *dealnum;



@property (strong, nonatomic) IBOutlet UILabel *labelDealDescription;


@property (strong, nonatomic) IBOutlet UILabel *labelDealTitle;

@property (strong, nonatomic) IBOutlet UIButton *buttonCategory;

- (IBAction)buttonNextDeal:(id)sender;

- (IBAction)buttonPrevDeal:(id)sender;

- (IBAction)buttonFavoritesPressed:(id)sender;




@end
