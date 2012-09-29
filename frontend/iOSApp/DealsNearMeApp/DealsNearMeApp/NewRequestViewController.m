//
//  NewRequestViewController.m
//  DealsNearMe
//
//  Created by Das on 9/28/12.
//
//

#import "NewRequestViewController.h"

@interface NewRequestViewController ()

@end

@implementation NewRequestViewController
@synthesize textFieldCityTextField;
@synthesize textFieldStateTextField;

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
	[self setTextFieldCityTextField:nil];
	[self setTextFieldStateTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonBackButtonTapped:(id)sender
{
	[self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)buttonRequestButtonTapped:(id)sender
{
	
}
@end
