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


@end

@interface NewFilterPickerViewController : UIViewController

@property (nonatomic, weak) id<NewFilterPickerViewController> delegate;

- (IBAction)buttonBackButtonPressed:(id)sender;

@end
