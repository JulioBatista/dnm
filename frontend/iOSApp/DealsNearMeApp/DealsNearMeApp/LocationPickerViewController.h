//
//  LocationPickerViewController.h
//  DealsNearMeApp
//
//  Created by Das on 2012-08-29.
//
//

#import <UIKit/UIKit.h>


@class LocationPickerViewController;

@protocol LocationPickerViewControllerDelegate <NSObject>

- (void)  locationPickerViewControllerDidCancel:(LocationPickerViewController *) controller;

- (void) locationPickerViewController:(LocationPickerViewController *)controller
                        didSelectCity:(NSString *) theCity;

@end

@interface LocationPickerViewController : UITableViewController

@property (nonatomic, weak) id<LocationPickerViewControllerDelegate> delegate;

@property (nonatomic, strong) NSString *city;




@property (nonatomic, copy) NSArray *allZipCodes;

@property (nonatomic, copy) NSArray *searchResults;



- (IBAction)cancel:(id)sender;

@end
