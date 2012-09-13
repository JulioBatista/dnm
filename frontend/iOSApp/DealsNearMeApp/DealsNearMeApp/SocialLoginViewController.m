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

static NSString* kAppId = @"192353644230893"; // Your Facebook app ID here

#define kAppName        @"DealsNearMe"
#define kCustomMessage  @"I just got a score of %d in %@, the best app on Facebook!"
#define kDealMessage    @"%@ Posted via %@"
#define kServerLink     @"http://dealsnear.me"
#define kImageSrc       @"http://199.102.228.10/~deals/api/dnm_logo_44x44.png"

@interface SocialLoginViewController ()
- (IBAction)buttonCancel:(id)sender;

@end

@implementation SocialLoginViewController
@synthesize activityIndicatorViewLarge;
@synthesize buttonFacebookLoginButton;
@synthesize labelLoginLabel;
@synthesize buttonFacebookLogoutButton;
@synthesize buttonTwitterLoginButton;
@synthesize buttonContinueButton;
@synthesize labelLoginWithTwitterLabel;
@synthesize facebook = _facebook;


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
    
	[FacebookHelper sharedInstance].delegate = self;
	
    [self.activityIndicatorViewLarge setHidden:YES];
	
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    
}

- (void)viewDidUnload
{
    [self setLabelLoginLabel:nil];
	[self setButtonFacebookLoginButton:nil];
	[self setButtonFacebookLogoutButton:nil];
    [self setActivityIndicatorViewLarge:nil];
    [self setButtonTwitterLoginButton:nil];
    [self setButtonContinueButton:nil];
    [self setLabelLoginWithTwitterLabel:nil];
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
	
	/* [[FacebookHelper sharedInstance] postToWallWithDialogNewHighscore:99]; */
    
    
    
    if (!kAppId)
	{
        NSLog(@"MISSING APP ID!!!");
        exit(1);
        
    }
	
	[self.activityIndicatorViewLarge setHidden:NO];
    
    // Check if there is a valid session
    if (![[[FacebookHelper sharedInstance] facebook] isSessionValid]) {
        [[[FacebookHelper sharedInstance] facebook] authorize:_permissions];
    }
    else {
        [[[FacebookHelper sharedInstance] facebook] requestWithGraphPath:@"me" andDelegate:self];
    }
    
    /* [FacebookHelper sharedInstance].delegate = self; */
	
	[self.activityIndicatorViewLarge setHidden:YES];
    
    
}
- (IBAction)buttonFacebookLogoutButtonPressed:(id)sender
{
    
	
    // Check if there is a valid session
    if (![[[FacebookHelper sharedInstance] facebook] isSessionValid]) {
        NSLog(@"No valid facebook session");
    }
    else {
        [[[FacebookHelper sharedInstance] facebook] logout];
        NSLog(@"Logout delegate method should receive a callback right about now");
    }
    
	
	
}
// UIAlertView helper for post buttons
- (void)showAlert:(NSString *)message
       withResult:(NSString *)result
{
	
    NSString *alertMsg;
    NSString *alertTitle;
	
	
	alertMsg = [NSString stringWithFormat:@"Hello : %@'.\n : %@",
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
        
        [self.activityIndicatorViewLarge setHidden:NO];
        
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
                     
                     [self.activityIndicatorViewLarge setHidden:YES];
                     
					 [self.buttonTwitterLoginButton setHidden:YES];
					 
					 [self.labelLoginWithTwitterLabel setText:@"Continue"];
					 
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

- (IBAction)buttonContinueButtonPressed:(id)sender
{
	[self performSegueWithIdentifier:@"SocialLoginToTabBarSegue" sender:self];
}

#pragma mark FB delegate methods
#pragma mark - FBDelegate Methods

- (void)fbDidLogin
{
    NSLog(@"F*******B login OK");
    [self.buttonFacebookLoginButton setHidden:YES];
    
    
    [self.labelLoginLabel setText:@"LogOut"];
    // Store session info.
    [[NSUserDefaults standardUserDefaults] setObject:_facebook.accessToken forKey:kFBAccessTokenKey];
    [[NSUserDefaults standardUserDefaults] setObject:_facebook.expirationDate forKey:kFBExpirationDateKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    /* [self showAlert:@"LogIn Success" withResult:@"Welcome"]; */
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Welcome"
                                                        message:@"LogIn Success"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    [alertView show];
    
    NSLog(@"FB login All other methods fired OK");
    
}

/**
 * Called when the user canceled the authorization dialog.
 */
-(void)fbDidNotLogin:(BOOL)cancelled
{
    NSLog(@"FB did not login");
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"There was an error logging in"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    [alertView show];
    
}

/**
 * Called when the request logout has succeeded.
 */
- (void)fbDidLogout
{
    NSLog(@"FB logout OK");
    
    // Release stored session.
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:kFBAccessTokenKey];
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:kFBExpirationDateKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    /* [self showAlert:@"LogOut Success" withResult:@"Success"]; */
    
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Logout"
                                                        message:@"You are now logged out"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    [alertView show];
    
    
    [self.buttonFacebookLoginButton setHidden:NO];
    
    [self.labelLoginLabel setText:@"LogIn"];
	
    
}

/**
 * Called after the access token was extended. If your application has any
 * references to the previous access token (for example, if your application
 * stores the previous access token in persistent storage), your application
 * should overwrite the old access token with the new one in this method.
 * See extendAccessToken for more details.
 */
- (void)fbDidExtendToken:(NSString*)accessToken
               expiresAt:(NSDate*)expiresAt
{
    
}

/**
 * Called when the current session has expired. This might happen when:
 *  - the access token expired
 *  - the app has been disabled
 *  - the user revoked the app's permissions
 *  - the user changed his or her password
 */
- (void)fbSessionInvalidated
{
    
}

/**
 * Called when a request returns and its response has been parsed into
 * an object.
 *
 * The resulting object may be a dictionary, an array, a string, or a number,
 * depending on thee format of the API response.
 */
- (void)request:(FBRequest *)request didLoad:(id)result
{
    NSLog(@"FB request OK %@", [result objectForKey:@"first_name"]);
    
    [self showAlert:[result objectForKey:@"first_name"] withResult:@"Welcome"];
    
    [self.buttonFacebookLoginButton setHidden:YES];
    
    [self.labelLoginLabel setText:@"LogOut"];
	
	[self.buttonTwitterLoginButton setHidden:YES];
	
	[self.labelLoginWithTwitterLabel setText:@"Continue"];
    
}

/**
 * Called when an error prevents the Facebook API request from completing
 * successfully.
 */
- (void)request:(FBRequest *)request didFailWithError:(NSError *)error
{
    NSLog(@"FB error: %@", [error localizedDescription]);
}

/**
 * Called when a UIServer Dialog successfully return.
 */
- (void)dialogDidComplete:(FBDialog *)dialog
{
    NSLog(@"published successfully on FB");
}

#pragma mark FacebookHelperDelegate

- (void) facebookHelperDidLogin:(FacebookHelper *) facebookHelper
{
    NSLog(@"++++++++facebookHelperDidLogin+++++++++++++++++++++the delegate method was triggered");
    
    [self showAlert:@"You are now logged in" withResult:@"Welcome"];
    
    [self.buttonFacebookLoginButton setHidden:YES];
    
    [self.labelLoginLabel setText:@"LogOut"];
    
    // Check if there is a valid session
    if (![[[FacebookHelper sharedInstance] facebook] isSessionValid])
    {
        // [[[FacebookHelper sharedInstance] facebook] authorize:_permissions];
    }
    else
    {
        NSLog(@"----------probably should try to request the user photo here");
    }
	
	[self.buttonTwitterLoginButton setHidden:YES];
	
	[self.labelLoginWithTwitterLabel setText:@"Continue"];
    
}

- (void) facebookHelperDidNotLogin:(FacebookHelper *) facebookHelper
{
    NSLog(@"++++++++++facebookHelperDidNotLogin+++++++++++++++++++the delegate method was triggered");
}

- (void) facebookHelperDidLogout:(FacebookHelper *) facebookHelper
{
    NSLog(@"++++++++++facebookHelperDidLogout+++++++++++++++++++the delegate method was triggered");
    
    [self showAlert:@"You are now logged out" withResult:@"GoodBye"];
    
    [self.buttonFacebookLoginButton setHidden:NO];
    
    [self.labelLoginLabel setText:@"LogIn"];
	
	[self.buttonTwitterLoginButton setHidden:NO];
	
	[self.labelLoginWithTwitterLabel setText:@"LogIn With Twitter"];
}

- (void) facebookHelper:(FacebookHelper *)facebookHelper
                request:(FBRequest *) request
                didLoad:(id)result
{
    NSLog(@"++++++++++facebookHelper: request: didLoad: +++++++++++++++++++the delegate method was triggered");
    
    NSLog(@"FB request OK %@", result);
    
    [self showAlert:[result objectForKey:@"first_name"] withResult:@"Welcome"];
    
    [self.buttonFacebookLoginButton setHidden:YES];
    
    [self.labelLoginLabel setText:@"LogOut"];
}
@end
