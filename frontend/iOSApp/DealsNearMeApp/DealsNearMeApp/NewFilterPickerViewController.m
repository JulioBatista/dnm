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
	
	[self.segmentedControlRatingControl setSelectedSegmentIndex:self.theSelectedRatingFilter];
	
	[self.segmentedControlDistanceControl setSelectedSegmentIndex:self.theSelectedDistanceFilter];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
	

	
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	

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
	[self.delegate filterPickerViewController:self didSelectRatingFilter:self.segmentedControlRatingControl.selectedSegmentIndex];
	
	
}

- (IBAction)segmentedControlDistanceControlValueChanged:(id)sender
{
	[self.delegate filterPickerViewController:self didSelectDistanceFilter:self.segmentedControlDistanceControl.selectedSegmentIndex];
}
@end
