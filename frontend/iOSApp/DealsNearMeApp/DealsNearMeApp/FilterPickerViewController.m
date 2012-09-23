//
//  FilterPickerViewController.m
//  DealsNearMeApp
//
//  Created by Das on 2012-09-12.
//
//

#import "FilterPickerViewController.h"

@interface FilterPickerViewController ()


@end

@implementation FilterPickerViewController
{
    NSUInteger selectedIndex;
}
@synthesize segmentedControlRatingControl = _segmentedControlRatingControl;
@synthesize segmentedControlDistanceControl = _segmentedControlDistanceControl;


@synthesize delegate = _delegate;

@synthesize theSelectedFilter = _theSelectedFilter;

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
    // [self.segmentedControlRatingControl setSelectedSegmentIndex:self.theSelectedFilter];
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
   
    
}

- (void)viewDidUnload
{

    [self setSegmentedControlRatingControl:nil];
    [self setSegmentedControlDistanceControl:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonCancelPressed:(id)sender
{
    [self.delegate filterPickerViewControllerDidCancel:self];
}





- (IBAction)segmentedControlRatingControlValueChanged:(id)sender
{
	/* 
	 
	 [self.segmentedControlRatingControl setSelectedSegmentIndex:0];
	
	[self.delegate filterPickerViewController:self didSelectFilter:self.segmentedControlRatingControl.selectedSegmentIndex];
	 */
	

}

- (IBAction)segmentedControlDistanceControlValueChanged:(id)sender
{
	/* 
	 
	[self.segmentedControlDistanceControl setSelectedSegmentIndex:1];
	
	[self.delegate filterPickerViewController:self didSelectFilter:self.segmentedControlDistanceControl.selectedSegmentIndex];
	*/
}
 
@end
