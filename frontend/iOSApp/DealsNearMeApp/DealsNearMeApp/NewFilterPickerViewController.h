//
//  NewFilterPickerViewController.h
//  DealsNearMeApp
//
//  Created by Das on 9/22/12.
//
//

#import <UIKit/UIKit.h>

@class NewFilterPickerViewController;

@protocol NewFilterPickerViewController <NSObject>

- (void)filterPickerViewControllerDidCancel:(NewFilterPickerViewController *)controller;

- (void) filterPickerViewController:(NewFilterPickerViewController *)controller
					didSelectFilter:(NSUInteger) theFilter;

@end

@interface NewFilterPickerViewController : UIViewController

@property (nonatomic, weak) id<NewFilterPickerViewController> delegate;

- (IBAction)buttonBackButtonPressed:(id)sender;

- (IBAction)segmentedControlRatingControlValueChanged:(id)sender;

- (IBAction)segmentedControlDistanceControlValueChanged:(id)sender;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlRatingControl;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlDistanceControl;

@end
