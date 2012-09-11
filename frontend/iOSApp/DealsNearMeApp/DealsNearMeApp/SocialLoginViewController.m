//
//  SocialLoginViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SocialLoginViewController.h"
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
@end
