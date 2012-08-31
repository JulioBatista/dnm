//
//  DealDetailViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DealDetailViewController.h"

@interface DealDetailViewController ()

@end

@implementation DealDetailViewController
@synthesize mapDeal = _mapDeal;
@synthesize dealnum = _dealnum;
@synthesize textdealdescription = _textdealdescription;
@synthesize textdealtitle = _textdealtitle;
@synthesize labelDealDescription = _labelDealDescription;
@synthesize labelDealTitle = _labelDealTitle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSLog(@"trying to retrieve indexPath %@", self.dealnum);
	
	NSData *dealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"dealsarchive"];
	
	NSMutableArray *archivedDeals = [NSKeyedUnarchiver unarchiveObjectWithData:dealsData];
    
	if ([archivedDeals count] > 0)
	{
		NSLog(@"Archived deals were found");
	}
    
	NSDictionary *onedeal = [archivedDeals objectAtIndex:[self.dealnum integerValue]];
	
	self.labelDealTitle.text = [onedeal objectForKey:@"title"];
	
	
}

- (void)viewDidUnload
{
	
	[self setLabelDealDescription:nil];
	[self setLabelDealTitle:nil];
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



@end
