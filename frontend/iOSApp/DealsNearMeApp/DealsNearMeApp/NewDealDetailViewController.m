//
//  NewDealDetailViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NewDealDetailViewController.h"
#import "FavoritesViewController.h"
#import "Twitter/Twitter.h"
#import "NetworkFetcher.h"
#import "FacebookHelper.h"

#define letOSHandleLogin FALSE

@interface NewDealDetailViewController ()

@end

@implementation NewDealDetailViewController
@synthesize buttonFavoritesButton = _buttonFavoritesButton;

@synthesize labelDealDescription;
@synthesize dealnum = _dealnum;
@synthesize dealIndex = _dealIndex;
@synthesize currentDeal = _currentDeal;
@synthesize currentDealNum = _currentDealNum;
@synthesize archivedDeals = _archivedDeals;
@synthesize buttonCategory;
@synthesize labelBusinessName = _labelBusinessName;
@synthesize labelAddress;
@synthesize labelAddressLine2 = _labelAddressLine2;
@synthesize labelBusinessPhoneLabel = _labelBusinessPhoneLabel;
@synthesize favoriteDeals = _favoriteDeals;
@synthesize actionSheet = _actionSheet;
@synthesize canTweet = _canTweet;
@synthesize fromFavoritesView = _fromFavoritesView;


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
    
    // favorites
    
	
    
    
    NSData *favoriteDealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"favoritedealsarchive"];
	
	self.favoriteDeals = [NSKeyedUnarchiver unarchiveObjectWithData:favoriteDealsData];
    
    if ([self.favoriteDeals count] == 0)
    {
		self.favoriteDeals = [[NSMutableArray alloc] init];
    }
    
    
	NSLog(@"Echo the dealnum--------------------------------------------....%@", self.dealnum);
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
	
	
	
	self.labelDealDescription.text = [onedeal objectForKey:NETWORK_DEAL_DESCRIPTION];
    
    
    /*
     self.labelDealDescription.text = [[onedeal objectForKey:NETWORK_DEAL_DEALDESCRIPTION] objectForKey:NETWORK_DEAL_CONTENT];
     */
	
	[self.buttonCategory setTitle:[onedeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
	
	
	self.labelBusinessName.text = [onedeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
	
	self.labelAddress.text = [onedeal objectForKey:NETWORK_DEAL_ADDRESS];
	
	self.labelAddressLine2.text = [onedeal objectForKey:NETWORK_DEAL_ID];
	
	self.labelBusinessPhoneLabel.text = [onedeal objectForKey:NETWORK_DEAL_BUSINESS_PHONE];
	
	
	/* NSLog(@"-----%@", onedeal); */
    [FacebookHelper sharedInstance].publishingdelegate = self;
	
	/* set the favorites button to pressed state if you are coming from Favorites screen */
	
	if (self.fromFavoritesView)
	{
		[self.buttonFavoritesButton setEnabled:NO];
	}
	else
	{
		[self.buttonFavoritesButton setEnabled:YES];
	}
}

- (void)viewDidUnload
{
	
	[self setLabelDealDescription:nil];
	[self setButtonCategory:nil];
	[self setLabelAddress:nil];
	[self setLabelBusinessName:nil];
	[self setLabelAddressLine2:nil];
	[self setLabelBusinessPhoneLabel:nil];
	[self setButtonFavoritesButton:nil];
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
		
		self.labelBusinessName.text = [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
		
		self.labelDealDescription.text = [self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION];
		
		[self.buttonCategory setTitle:[self.currentDeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
		
		self.labelAddress.text = [self.currentDeal objectForKey:NETWORK_DEAL_ADDRESS];
		
		self.labelBusinessPhoneLabel.text = [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESS_PHONE];
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
		
		self.labelBusinessName.text = [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
		
		self.labelDealDescription.text = [self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION];
		
		[self.buttonCategory setTitle:[self.currentDeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
		
		self.labelAddress.text = [self.currentDeal objectForKey:NETWORK_DEAL_ADDRESS];
		
		self.labelBusinessPhoneLabel.text = [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESS_PHONE];
		
	}
	
}

- (IBAction)buttonFavoritesPressed:(id)sender
{
    
	
	[self.buttonFavoritesButton setImage:[UIImage imageNamed:@"hearticon_press.png"] forState:UIControlStateSelected];
	
	[self.buttonFavoritesButton setImage:[UIImage imageNamed:@"hearticon_press.png"] forState:UIControlStateNormal];
	
	[self.buttonFavoritesButton setEnabled:NO];
	
    
	NSLog(@"How many deals in Favorites view Controller %d", [self.favoriteDeals count]);
    
    self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
    
    NSDictionary *theDeal = self.currentDeal;
    
    NSLog(@"What is the value of the current deal : %@", self.currentDeal);
    
    
    [self.favoriteDeals addObject:theDeal];
    
    NSLog(@"How many deals in Favorites view Controller %d", [self.favoriteDeals count]);
    
    // archive before unload
    
    NSData *favoriteDealsDataStorage = [NSKeyedArchiver archivedDataWithRootObject:self.favoriteDeals];
    
    [[NSUserDefaults standardUserDefaults] setObject:favoriteDealsDataStorage forKey:@"favoritedealsarchive"];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Added"
                                                        message:[self.currentDeal objectForKey:NETWORK_DEAL_TITLE]
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    [alertView show];
	
	
    
}


- (IBAction)buttonShareButtonPressed:(id)sender
{
    if (self.actionSheet)
    {
        // do nothing
    }
    else
    {
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Share Deals" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Twitter", @"Facebook", @"Email", nil];
        
        [actionSheet showFromBarButtonItem:sender animated:YES];
        
    }
}

// UIAlertView helper for post buttons
- (void)showAlert:(NSString *)message
           result:(NSString *)result
{
	
    NSString *alertMsg;
    NSString *alertTitle;
	
	
	alertMsg = [NSString stringWithFormat:@"Successfully posted '%@'.\nPost ID: %@",
				message, result];
	alertTitle = @"Success";
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle
                                                        message:alertMsg
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}

// UIAlertView helper for post buttons
- (void)showAlert:(NSString *)message
       withResult:(NSString *)result
{
	
    NSString *alertMsg;
    NSString *alertTitle;
	
	
	alertMsg = [NSString stringWithFormat:@"Message : %@'.\nResult : %@",
				message, result];
	alertTitle = @"Success";
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle
                                                        message:alertMsg
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}

- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *choice = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if (buttonIndex == [actionSheet destructiveButtonIndex])
    {
        NSLog(@"Destroy");
        
    }
    else if ([choice isEqualToString:@"Twitter"])
    {
        NSLog(@"Twitter");
        
        if ([TWTweetComposeViewController canSendTweet])
        {
            self.canTweet = YES;
        }
        
        if (letOSHandleLogin)
        {
            NSLog(@"error label hidden");
        }
        else
        {
            NSLog(@"_________________");
        }
        
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		NSLog(@"--------------deal info : %@", [self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]);
        
        // Create the tweet sheet
        TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
        
        // Customize the tweet sheet here
        // Add a tweet message
        
        [tweetSheet setInitialText:[self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]];
        
        // Add an image
        
        [tweetSheet addImage:[UIImage imageNamed:@"default_thumb.png"]];
        
        // Add a link
        
        [tweetSheet addURL:[NSURL URLWithString:@"http://leviait.com"]];
        
        // Set a blocking handler for the tweet sheet
        
        tweetSheet.completionHandler = ^(TWTweetComposeViewControllerResult result)
        {
            
			
            
            
            [self dismissModalViewControllerAnimated:YES];
            
            [self showAlert:@"Posted to Twitter" withResult:@"Success"];
            
        };
        
        // Show the tweet sheet
        
        [self presentModalViewController:tweetSheet animated:YES];
        
        
        
    }
    else if ([choice isEqualToString:@"Facebook"])
    {
        NSLog(@"Facebook");
		
		/*
         [[FacebookHelper sharedInstance] setIsForPostingScore:YES];
         [[FacebookHelper sharedInstance] postToWallWithDialogNewHighscore:99];
         */
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		NSLog(@"--------------deal info : %@", [self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]);
		
		[[FacebookHelper sharedInstance] setIsForPostingScore:YES];
		[[FacebookHelper sharedInstance] postToWallWithDialogFeedMessage:[self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]];
    }
    
    else if ([choice isEqualToString:@"Email"])
    {
        NSLog(@"Email");
    }
    
    else
    {
        NSLog(@"Default");
    }
	
    
}

- (void)  facebookHelperDidPublish:(FacebookHelper *)facebookHelper
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Published Successfully"
                                                        message:@"Success"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}



@end
