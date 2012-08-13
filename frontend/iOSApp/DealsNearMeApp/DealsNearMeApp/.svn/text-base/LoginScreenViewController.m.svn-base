//
//  LoginScreenViewController.m
//  DealsNearMeApp
//
//  Created by  on 7/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LoginScreenViewController.h"
#import "API.h"
#include <CommonCrypto/CommonDigest.h>

#define kSalt @"adlfu3489tyh2jnkLIUGI&%EV(&0982cbgrykxjnk8855"

@interface LoginScreenViewController ()

@end

@implementation LoginScreenViewController
@synthesize fldUsername = _fldUsername;
@synthesize fldPassword = _fldPassword;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	[_fldUsername becomeFirstResponder];
	
}


- (void)viewDidUnload
{

	[self setFldUsername:nil];
	[self setFldPassword:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
#pragma mark ClickHandlers
- (IBAction)btnCancelTapped:(id)sender 
{
	[self performSegueWithIdentifier:@"CancelLoginScreen" sender:nil]; 
	NSLog(@"The cancel button was pressed by %@", sender);
	 
		  
}
- (IBAction)btnLoginRegisterTapped:(UIButton *)sender 
{
	
	// form fields validation
	if (_fldUsername.text.length < 4 || _fldPassword.text.length <4)
	{
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registration"
														message:@"Too Short"
													   delegate:nil 
											  cancelButtonTitle:@"Ok" 
											  otherButtonTitles:nil];
		
		[alert show];
		return;
	}
	
	// salt the password
	
	NSString *saltedPassword = [NSString stringWithFormat:@"%@%@", _fldPassword.text, kSalt];
	
	//prepare the hashed storage
	NSString *hashedPassword = nil;
	
	// hashedPassword is an intermediate array 
	// a plain C array which we use as an intermediate
	// storage for the hashed data
	
	unsigned char hashedPasswordData[CC_SHA1_DIGEST_LENGTH];
	
	// hash the pass
	NSData *data = [saltedPassword dataUsingEncoding:NSUTF8StringEncoding];
	
	if (CC_SHA1([data bytes], [data length], hashedPasswordData))
	{
		// hashedPassword will hold the string of the hashed and salted password
		
		hashedPassword = [[NSString alloc] initWithBytes:hashedPasswordData length:sizeof(hashedPasswordData) encoding:NSASCIIStringEncoding];
																																			
	}
	else 
	{
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registration" message:@"Password can't be sent" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[alert show];
		
		return;
	}
	
	// check where it's a login or register
	
	UIButton *button = (UIButton *)sender; 
	

	
	
	NSLog(@"The sender was: %d", [button tag]);
	
	
	NSString *command = ([sender tag]==1)? @"register": @"login";
	
	NSLog(@"The command was: %@",command);
	
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:command, @"command",
		_fldUsername.text, @"username",
		hashedPassword, @"password",
		nil];
	
	
	// make the call to the web API
	[[API sharedInstance] commandWithParams:params onCompletion:^(NSDictionary *json)
	 {
		 // handle the response
		 
		 // result returned
		 NSDictionary *res = [[json objectForKey:@"result"] objectAtIndex:0];
		 
		 NSLog(@"The result is %@", res);
		 
		 if ([json objectForKey:@"error"]==nil && [[res objectForKey:@"IdUser"] intValue]>0)
		 {
			 // success
			 
			 [[API sharedInstance] setUser:res];
			 
			 [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
			 
			 //show message to the user
			 [[[UIAlertView alloc] initWithTitle:@"Logged in" 
										 message:[NSString stringWithFormat:@"Welcome %@",[res objectForKey:@"username"] ]
										delegate:nil 
							   cancelButtonTitle:@"Close" 
							   otherButtonTitles: nil] show];
		 }
		 else {
			 // error
			 UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error" message:[json objectForKey:@"error"] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			 [alert show];
		 }
	 }];
	
	
}




@end
