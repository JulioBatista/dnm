//
//  NewDealDetailViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FacebookHelper.h"

@interface NewDealDetailViewController : UIViewController<UIActionSheetDelegate, FacebookHelperPublishingDelegate>
- (IBAction)buttonBackTapped:(id)sender;



@property (strong, nonatomic) IBOutlet UILabel *labelDealDescription;

@property (nonatomic, strong) NSNumber *dealnum;

@property (nonatomic) NSUInteger dealIndex;

@property (nonatomic) NSInteger currentDealNum;

@property (nonatomic, strong) NSDictionary *currentDeal;

@property (nonatomic, strong) NSMutableArray *archivedDeals;

@property (nonatomic, strong) NSMutableArray *favoriteDeals;

@property (strong, nonatomic) IBOutlet UIButton *buttonCategory;

@property (strong, nonatomic) IBOutlet UILabel *labelAddress;

@property (nonatomic, weak) UIActionSheet *actionSheet;


- (IBAction)buttonNext:(id)sender;

- (IBAction)buttonPrev:(id)sender;

- (IBAction)buttonFavoritesPressed:(id)sender;

- (IBAction)buttonShareButtonPressed:(id)sender;

@property (nonatomic) BOOL canTweet;


@end
