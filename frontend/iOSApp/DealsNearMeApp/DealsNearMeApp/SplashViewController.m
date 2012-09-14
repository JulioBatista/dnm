//
//  SplashViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SplashViewController.h"

@interface SplashViewController ()


@end

@implementation SplashViewController

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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonYesPressed:(id)sender 
{
	[self performSegueWithIdentifier:@"SocialLoginSegue" sender:self];
}
- (IBAction)buttonNoThanksButtonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"SplashScreenToTabBarControllerSegue" sender:self];
}
@end
