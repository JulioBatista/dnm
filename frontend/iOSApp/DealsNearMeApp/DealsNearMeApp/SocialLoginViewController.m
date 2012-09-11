//
//  SocialLoginViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SocialLoginViewController.h"
#import "Twitter/Twitter.h"
#import "FacebookHelper.h"

@interface SocialLoginViewController ()
- (IBAction)buttonCancel:(id)sender;

@end

@implementation SocialLoginViewController
@synthesize buttonFacebookLoginButton;
@synthesize labelLoginLabel;
@synthesize buttonFacebookLogoutButton;



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
	
	
}

- (void)viewDidUnload
{
    [self setLabelLoginLabel:nil];
	[self setButtonFacebookLoginButton:nil];
	[self setButtonFacebookLogoutButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonCancel:(id)sender
{
	[self dismissViewControllerAnimated:YES completion:^{
		// nothing
	}];
}
- (IBAction)buttonFacebookButtonPressed:(id)sender
{
    [[FacebookHelper sharedInstance] login];
	
	if ([[FacebookHelper sharedInstance] isLoggedIn] == YES)
	{
		NSLog(@"-----------is logged in");
		
		[self.buttonFacebookLoginButton setHidden:YES];
		
		self.labelLoginLabel.text = @"LogOut";
		
		
		
	}
	
	/* [[FacebookHelper sharedInstance] postToWallWithDialogNewHighscore:99]; */
}
- (IBAction)buttonFacebookLogoutButtonPressed:(id)sender
{
    [[FacebookHelper sharedInstance] logout];
	
	
	if ([[FacebookHelper sharedInstance] isLoggedIn] == NO)
	{
		NSLog(@"-----------is logged out");
		
		[self.buttonFacebookLoginButton setHidden:NO];
		
		self.labelLoginLabel.text = @"LogIn";
		
		
		
	}
	
	
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


- (IBAction)buttonTwitterButtonPressed:(id)sender
{
    // Is Twitter is accessible is there at least one account
    // setup on the device
    if ([TWTweetComposeViewController canSendTweet])
    {
        // Create account store, followed by a twitter account identifer
        account = [[ACAccountStore alloc] init];
        
        ACAccountType *accountType = [account accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
        
        // Request access from the user to use their Twitter accounts.
        [account requestAccessToAccountsWithType:accountType withCompletionHandler:^(BOOL granted, NSError *error)
         {
             // Did user allow us access?
             if (granted == YES)
             {
                 // Populate array with all available Twitter accounts
                 arrayOfAccounts = [account accountsWithAccountType:accountType];
                 
                 
                 // Populate the tableview
                 if ([arrayOfAccounts count] > 0)
                 {
                     // Update the row count used by tableview
                     numberOfTwitterAccounts = [arrayOfAccounts count];
                     
                     NSLog(@"---------------%d", numberOfTwitterAccounts);
                     
                     [self showAlert:@"Logged In" withResult:@"Success"];
                     
                 }
             }
             
             else
             {
                 [self showAlert:@"User did not grant access" withResult:@"Failure"];
             }
         }];
    }
    else
    {
        [self showAlert:@"Unable to login" withResult:@"Failure"];
    }
    
}
@end
