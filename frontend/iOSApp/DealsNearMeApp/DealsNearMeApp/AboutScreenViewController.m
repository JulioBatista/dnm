//
//  AboutScreenViewController.m
//  DealsNearMeApp
//
//  Created by Das on 9/16/12.
//
//

#import "AboutScreenViewController.h"

@interface AboutScreenViewController ()

@end

@implementation AboutScreenViewController

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

- (IBAction)buttonBackButtonPressed:(id)sender
{
	[self.navigationController popViewControllerAnimated:YES];
}
@end
