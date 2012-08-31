//
//  DealDetailViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DealDetailViewController.h"
#import "FavoritesViewController.h"

@interface DealDetailViewController ()

@end

@implementation DealDetailViewController
@synthesize mapDeal = _mapDeal;
@synthesize dealnum = _dealnum;

@synthesize labelDealDescription = _labelDealDescription;
@synthesize labelDealTitle = _labelDealTitle;
@synthesize buttonCategory = _buttonCategory;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#define NETWORK_DEAL_TITLE @"title"
#define NETWORK_DEAL_DEALNAME @"dealname"
#define NETWORK_DEAL_DEALDESCRIPTION @"dealdescription"
#define NETWORK_DEAL_DESCRIPTION @"description._content"
#define NETWORK_DEAL_SECTOR @"sector"
#define NETWORK_PLACE_NAME @"_content"
#define NETWORK_DEAL_ID @"id"
#define NETWORK_LATITUDE @"latitude"
#define NETWORK_LONGITUDE @"longitude"
#define NETWORK_DEAL_OWNER @"businessname"
#define NETWORK_DEAL_ADDRESS @"businessaddress"
#define NETWORK_DEAL_PLACE_NAME @"derived_place"
#define NETWORK_DEAL_RATING @"rating"
#define NETWORK_TAGS @"tags"

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    /* NSLog(@"trying to retrieve indexPath %@", self.dealnum); */
	
	/* 
	NSData *dealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"dealsarchive"];
	
	NSMutableArray *archivedDeals = [NSKeyedUnarchiver unarchiveObjectWithData:dealsData];
    
	if ([archivedDeals count] > 0)
	{
		NSLog(@"Archived deals were found");
	}
    
	NSDictionary *onedeal = [archivedDeals objectAtIndex:[self.dealnum integerValue]];
	
	self.labelDealTitle.text = [onedeal objectForKey:NETWORK_DEAL_TITLE];
	
	self.labelDealDescription.text = [onedeal objectForKey:NETWORK_DEAL_TITLE];
	
	 
	 */
	
	/* [self.buttonCategory setTitle:[onedeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal]; */
	
	/* 
	NSLog(@"---------------onedeal : %@", onedeal);
	*/
	
	
}

- (void)viewDidUnload
{
	
	[self setLabelDealDescription:nil];
	[self setLabelDealTitle:nil];
	[self setButtonCategory:nil];

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonBackTapped:(id)sender 
{
	[self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)buttonNextDeal:(id)sender
{
	
}

- (IBAction)buttonPrevDeal:(id)sender
{
	
}

- (IBAction)buttonFavoritesPressed:(id)sender
{
    // archive before unload
    
    FavoritesViewController *fvc = [[FavoritesViewController alloc] init];
    

    
	NSLog(@"How many deals in Favorites view Controller %d", [fvc.favoriteDeals count]);
    
    /*
    
	NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self.products];
	[[NSUserDefaults standardUserDefaults] setObject:data forKey:@"products"];
     
     */
}


@end
