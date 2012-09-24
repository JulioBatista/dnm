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
					didSelectRatingFilter:(NSUInteger) theRatingFilter;

- (void) filterPickerViewController:(NewFilterPickerViewController *)controller
					didSelectDistanceFilter:(NSUInteger) theDistanceFilter;


@end

@interface NewFilterPickerViewController : UIViewController

@property (nonatomic, weak) id<NewFilterPickerViewController> delegate;

- (IBAction)buttonBackButtonPressed:(id)sender;

- (IBAction)segmentedControlRatingControlValueChanged:(id)sender;

- (IBAction)segmentedControlDistanceControlValueChanged:(id)sender;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlRatingControl;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlDistanceControl;

@property (nonatomic) NSUInteger theSelectedRatingFilter;

@property (nonatomic) NSUInteger theSelectedDistanceFilter;

@end
