//
//  NewDealDetailViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"
#import "FacebookHelper.h"
#import "MessageUI/MessageUI.h"

@interface NewDealDetailViewController : UIViewController<UIActionSheetDelegate, FacebookHelperPublishingDelegate, MKMapViewDelegate, MFMailComposeViewControllerDelegate>
- (IBAction)buttonBackTapped:(id)sender;



@property (strong, nonatomic) IBOutlet UITextView *textViewDealDescriptionTextView;




@property (nonatomic, strong) NSNumber *dealnum;

@property (nonatomic) NSUInteger dealIndex;

@property (nonatomic) NSUInteger currentDealNum;

@property (nonatomic, strong) NSDictionary *currentDeal;

@property (nonatomic, strong) NSMutableArray *archivedDeals;

@property (nonatomic, strong) NSMutableArray *favoriteDeals;

@property (strong, nonatomic) IBOutlet UIButton *buttonCategory;

@property (strong, nonatomic) IBOutlet UILabel *labelBusinessName;


@property (strong, nonatomic) IBOutlet UILabel *labelAddress;

@property (strong, nonatomic) IBOutlet UILabel *labelAddressLine2;

@property (strong, nonatomic) IBOutlet UILabel *labelBusinessPhoneLabel;

@property (nonatomic, weak) UIActionSheet *actionSheet;


@property (strong, nonatomic) IBOutlet UIButton *buttonNextButton;

- (IBAction)buttonNext:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonPrevButton;


- (IBAction)buttonPrev:(id)sender;

- (IBAction)buttonFavoritesPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonFavoritesButton;

@property (strong, nonatomic) IBOutlet UILabel *labelTimeElapsedLabel;

@property (strong, nonatomic) IBOutlet UILabel *labelTotalViewLabel;

@property (strong, nonatomic) IBOutlet UIImageView *imageViewBusinessImageView;


- (IBAction)buttonPhoneButtonTapped:(id)sender;


- (IBAction)buttonShareButtonPressed:(id)sender;

@property (nonatomic) BOOL canTweet;

@property (nonatomic) BOOL fromFavoritesView;

@property (strong, nonatomic) IBOutlet MKMapView *mapViewDetailMapView;

@property (nonatomic, strong) CLGeocoder *geocoder;


@end
