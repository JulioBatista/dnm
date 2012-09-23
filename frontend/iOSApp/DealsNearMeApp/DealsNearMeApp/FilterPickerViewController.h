//
//  FilterPickerViewController.h
//  DealsNearMeApp
//
//  Created by Das on 2012-09-12.
//
//

#import <UIKit/UIKit.h>

@class FilterPickerViewController;

@protocol FilterPickerViewControllerDelegate <NSObject>

- (void) filterPickerViewControllerDidCancel:(FilterPickerViewController *) controller;

- (void) filterPickerViewController:(FilterPickerViewController *)controller
                             didSelectFilter:(NSUInteger) theFilter;


@end

@interface FilterPickerViewController : UIViewController

@property (nonatomic, weak) id<FilterPickerViewControllerDelegate> delegate;



@property (nonatomic) NSUInteger theSelectedFilter;
@property (nonatomic, strong) NSNumber *filternum;


- (IBAction)buttonCancelPressed:(id)sender;


@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlRatingControl;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlDistanceControl;
- (IBAction)segmentedControlRatingControlValueChanged:(id)sender;

- (IBAction)segmentedControlDistanceControlValueChanged:(id)sender;

@end
