//
//  NewRequestViewController.h
//  DealsNearMe
//
//  Created by Das on 9/28/12.
//
//

#import <UIKit/UIKit.h>

@interface NewRequestViewController : UIViewController
- (IBAction)buttonBackButtonTapped:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textFieldCityTextField;


@property (strong, nonatomic) IBOutlet UITextField *textFieldStateTextField;

- (IBAction)buttonRequestButtonTapped:(id)sender;


@end
