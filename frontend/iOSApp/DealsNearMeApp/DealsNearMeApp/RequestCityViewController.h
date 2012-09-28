//
//  RequestCityViewController.h
//  DealsNearMeApp
//
//  Created by Das on 9/22/12.
//
//

#import <UIKit/UIKit.h>

@interface RequestCityViewController : UIViewController


- (IBAction)buttonBackButtonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textFieldCityTextField;



- (IBAction)buttonRequestButtonTapped:(id)sender;


@end
