//
//  RequestCityViewController.m
//  DealsNearMeApp
//
//  Created by Das on 9/22/12.
//
//

#import "RequestCityViewController.h"

@interface RequestCityViewController ()

@end

@implementation RequestCityViewController
@synthesize textFieldCityTextField;



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


    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonBackButtonPressed:(id)sender
{
	[self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)buttonRequestButtonTapped:(id)sender
{
	
	
}

@end
