//
//  NewDealDetailViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NewDealDetailViewController.h"

@interface NewDealDetailViewController ()

@end

@implementation NewDealDetailViewController
@synthesize labelDealTitle;
@synthesize labelDealDescription;
@synthesize dealnum = _dealnum;
@synthesize currentDeal = _currentDeal;
@synthesize currentDealNum = _currentDealNum;
@synthesize archivedDeals = _archivedDeals;
@synthesize buttonCategory;
@synthesize labelAddress;


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
	NSLog(@"Echo the dealnum....%@", self.dealnum);
	NSData *dealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"dealsarchive"];
	
	self.archivedDeals = [NSKeyedUnarchiver unarchiveObjectWithData:dealsData];
    
	if ([self.archivedDeals count] > 0)
	{
		NSLog(@"Archived deals were found");
	}
	
	self.currentDealNum = [self.dealnum integerValue];
	
	NSLog(@"currentDealNum %d", self.currentDealNum);
	
	NSDictionary *onedeal = [self.archivedDeals objectAtIndex:[self.dealnum integerValue]];
	
	self.labelDealTitle.text = [onedeal objectForKey:NETWORK_DEAL_OWNER];
	
	self.labelDealDescription.text = [onedeal objectForKey:NETWORK_DEAL_TITLE];
	
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
@end
