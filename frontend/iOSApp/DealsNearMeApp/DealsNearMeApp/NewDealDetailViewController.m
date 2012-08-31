//
//  NewDealDetailViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NewDealDetailViewController.h"
#import "FavoritesViewController.h"

@interface NewDealDetailViewController ()

@end

@implementation NewDealDetailViewController
@synthesize labelDealTitle;
@synthesize labelDealDescription;
@synthesize dealnum = _dealnum;
@synthesize dealIndex = _dealIndex;
@synthesize currentDeal = _currentDeal;
@synthesize currentDealNum = _currentDealNum;
@synthesize archivedDeals = _archivedDeals;
@synthesize buttonCategory;
@synthesize labelAddress;
@synthesize favoriteDeals = _favoriteDeals;

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
#define NETWORK_DEAL_DESCRIPTION @"description"
#define NETWORK_DEAL_SECTOR @"sector"
#define NETWORK_DEAL_CONTENT @"_content"
#define NETWORK_DEAL_ID @"id"
#define NETWORK_LATITUDE @"latitude"
#define NETWORK_LONGITUDE @"longitude"
#define NETWORK_DEAL_OWNER @"business_name"
#define NETWORK_DEAL_ADDRESS @"business_address"
#define NETWORK_DEAL_PLACE_NAME @"derived_place"
#define NETWORK_DEAL_RATING @"rating"
#define NETWORK_TAGS @"tags"
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // favorites
    

    
    
    NSData *favoriteDealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"favoritedealsarchive"];
	
	self.favoriteDeals = [NSKeyedUnarchiver unarchiveObjectWithData:favoriteDealsData];
    
    if ([self.favoriteDeals count] == 0)
    {
            self.favoriteDeals = [[NSMutableArray alloc] init];
    }
    
    
	NSLog(@"Echo the dealnum....%@", self.dealnum);
	NSData *dealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"dealsarchive"];
	
	self.archivedDeals = [NSKeyedUnarchiver unarchiveObjectWithData:dealsData];
    
	if ([self.archivedDeals count] > 0)
	{
		NSLog(@"Archived deals were found");
	}
	
	self.currentDealNum = [self.dealnum integerValue];
	
	if (self.dealnum == nil)
	{
		self.dealnum = 0;
		NSLog(@"dealnum was nil");
	}
	
	NSLog(@"currentDealNum %d", self.currentDealNum);
	
	
	NSLog(@"self.dealIndex : %d", self.dealIndex);
	
	NSDictionary *onedeal = [self.archivedDeals objectAtIndex:[self.dealnum integerValue]];
	
	self.labelDealTitle.text = [onedeal objectForKey:NETWORK_DEAL_OWNER];
	
	self.labelDealDescription.text = [onedeal objectForKey:NETWORK_DEAL_TITLE];
    
    
    /*
     self.labelDealDescription.text = [[onedeal objectForKey:NETWORK_DEAL_DEALDESCRIPTION] objectForKey:NETWORK_DEAL_CONTENT];
     */
	
	[self.buttonCategory setTitle:[onedeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
	
	self.labelAddress.text = [onedeal objectForKey:NETWORK_DEAL_ADDRESS];
	
	
	NSLog(@"-----%@", onedeal);
}

- (void)viewDidUnload
{
	[self setLabelDealTitle:nil];
	[self setLabelDealDescription:nil];
	[self setButtonCategory:nil];
	[self setLabelAddress:nil];
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
- (IBAction)buttonNext:(id)sender
{
	NSLog(@"buttonNext Pressed %d", self.currentDealNum);
	
	
	
	if (self.currentDealNum + 1 < [self.archivedDeals count])
	{
		
		self.currentDealNum++;
		
		NSLog(@"Current Deal Num: %d", self.currentDealNum);
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		self.labelDealTitle.text = [self.currentDeal objectForKey:NETWORK_DEAL_OWNER];
		
		self.labelDealDescription.text = [self.currentDeal objectForKey:NETWORK_DEAL_TITLE];
		
		[self.buttonCategory setTitle:[self.currentDeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
		
		self.labelAddress.text = [self.currentDeal objectForKey:NETWORK_DEAL_ADDRESS];
	}
}

- (IBAction)buttonPrev:(id)sender
{
	NSLog(@"buttonPrev Pressed %d", self.currentDealNum);
	
	if (self.currentDealNum > 0)
	{
		self.currentDealNum--;
		
		NSLog(@"Current Deal Num: %d", self.currentDealNum);
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		self.labelDealTitle.text = [self.currentDeal objectForKey:NETWORK_DEAL_OWNER];
		
		self.labelDealDescription.text = [self.currentDeal objectForKey:NETWORK_DEAL_TITLE];
		
		[self.buttonCategory setTitle:[self.currentDeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
		
		self.labelAddress.text = [self.currentDeal objectForKey:NETWORK_DEAL_ADDRESS];
		
	}
	
}

- (IBAction)buttonFavoritesPressed:(id)sender
{
    

    
	NSLog(@"How many deals in Favorites view Controller %d", [self.favoriteDeals count]);
    
    self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
    
    NSDictionary *theDeal = self.currentDeal;
    
    NSLog(@"What is the value of the current deal : %@", self.currentDeal);
    
    
    [self.favoriteDeals addObject:theDeal];
    
    NSLog(@"How many deals in Favorites view Controller %d", [self.favoriteDeals count]);
    
    // archive before unload
    
    NSData *favoriteDealsDataStorage = [NSKeyedArchiver archivedDataWithRootObject:self.favoriteDeals];
    
    [[NSUserDefaults standardUserDefaults] setObject:favoriteDealsDataStorage forKey:@"favoritedealsarchive"];
    
    
    
}
@end
