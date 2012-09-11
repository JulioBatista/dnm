//
//  SocialLoginViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>

@interface SocialLoginViewController : UIViewController
{
     ACAccountStore  *account;
     NSArray         *arrayOfAccounts;
    NSInteger     numberOfTwitterAccounts;

}

- (IBAction)buttonFacebookButtonPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonFacebookLoginButton;

@property (strong, nonatomic) IBOutlet UILabel *labelLoginLabel;

@property (strong, nonatomic) IBOutlet UIButton *buttonFacebookLogoutButton;

- (IBAction)buttonFacebookLogoutButtonPressed:(id)sender;

- (IBAction)buttonTwitterButtonPressed:(id)sender;
@end
