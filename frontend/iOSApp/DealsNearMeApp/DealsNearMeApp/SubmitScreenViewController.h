//
//  SubmitScreenViewController.h
//  DealsNearMeApp
//
//  Created by Das on 9/16/12.
//
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface SubmitScreenViewController : UIViewController<MFMailComposeViewControllerDelegate>

- (IBAction)buttonBackButtonPressed:(id)sender;

- (IBAction)buttonSubmitButtonPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *textFieldBusinessName;

@property (strong, nonatomic) IBOutlet UITextField *textFieldTwitterHandle;

@property (strong, nonatomic) IBOutlet UITextField *textFieldEmailAddress;

@end
