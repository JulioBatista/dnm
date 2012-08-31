//
//  NewDealDetailViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewDealDetailViewController : UIViewController
- (IBAction)buttonBackTapped:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *labelDealTitle;

@property (strong, nonatomic) IBOutlet UILabel *labelDealDescription;

@property (nonatomic, strong) NSNumber *dealnum;

@property (nonatomic) NSInteger currentDealNum;

@property (nonatomic, strong) NSDictionary *currentDeal;

@property (nonatomic, strong) NSMutableArray *archivedDeals;

@property (strong, nonatomic) IBOutlet UIButton *buttonCategory;

@property (strong, nonatomic) IBOutlet UILabel *labelAddress;

- (IBAction)buttonNext:(id)sender;

- (IBAction)buttonPrev:(id)sender;

@end
