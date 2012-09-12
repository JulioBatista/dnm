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
    
}
@synthesize segmentedControlFilterScreen = _segmentedControlFilterScreen;

@synthesize delegate = _delegate;

@synthesize theFilter = _theFilter;

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
    [self setSegmentedControlFilterScreen:nil];
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

- (IBAction)segmentedControlValueChanged:(id)sender
{
    switch (self.segmentedControlFilterScreen.selectedSegmentIndex)
    {
        case 0:
            NSLog(@"Popularity");
            
            
            self.theFilter = @"Popularity";
            
            [self.segmentedControlFilterScreen setSelectedSegmentIndex:0];
            
            [self.delegate filterPickerViewController:self didSelectFilter:self.theFilter];
            
            /* [self.buttonListButton setImage:[UIImage imageNamed:@"259-list-white.png"]];
             */
            break;
            
        case 1:
            NSLog(@"Distance");
            
            /*
             [self.buttonListButton setImage:[UIImage imageNamed:@"07-map-marker-white.png"]];
             */
            [self.segmentedControlFilterScreen setSelectedSegmentIndex:1];
            
            [self.delegate filterPickerViewController:self didSelectFilter:self.theFilter];
            
            break;
            
        default:
            break;
            
    }
    
    
}




@end
