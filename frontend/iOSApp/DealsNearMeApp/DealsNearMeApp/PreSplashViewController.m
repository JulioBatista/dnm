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
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    
    CGRect frame = self.view.bounds;
    
    
    [UIView animateWithDuration:0.7f animations:^
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
