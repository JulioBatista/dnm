//
//  PreSplashViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PreSplashViewController.h"

@interface PreSplashViewController ()

@end

@implementation PreSplashViewController
@synthesize imageViewPreSplashLogo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) animations
{
    
    self.imageViewPreSplashLogo.alpha = 0.0;
    
    [UIView beginAnimations:@"Fade-in" context:NULL];
    
    [UIView setAnimationDuration:1.0];
    
    self.imageViewPreSplashLogo.alpha = 1.0;
    
    
    
    
    
    
    
    [UIView commitAnimations];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
    
    
    CGRect frame = self.view.bounds;
    
    
    [UIView animateWithDuration:1.7f animations:^
     {
         [self.imageViewPreSplashLogo setCenter:CGPointMake(frame.size.width/2, 100)];
     }
                     completion:^(BOOL finished)
     {
         // perform segue here
         [self performSegueWithIdentifier:@"PreSplashToSplashSegue" sender:self];
         
     }
     ];
    
    
    
    
    
    
}

- (void)viewDidUnload
{
    [self setImageViewPreSplashLogo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonStart:(id)sender
{
    // nothing
}
@end
