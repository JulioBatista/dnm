//
//  NewFilterPickerViewController.m
//  DealsNearMeApp
//
//  Created by Das on 9/22/12.
//
//

#import "NewFilterPickerViewController.h"

@interface NewFilterPickerViewController ()

@end

@implementation NewFilterPickerViewController

@synthesize delegate = _delegate;

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
	[self.delegate filterPickerViewControllerDidCancel:self];
}

- (IBAction)segmentedControlRatingControlValueChanged:(id)sender
{
	[self.delegate filterPickerViewController:self didSelectFilter:self.segmentedControlRatingControl.selectedSegmentIndex];
	
	
}

- (IBAction)segmentedControlDistanceControlValueChanged:(id)sender
{
	[self.delegate filterPickerViewController:self didSelectFilter:self.segmentedControlDistanceControl.selectedSegmentIndex];
}
@end
