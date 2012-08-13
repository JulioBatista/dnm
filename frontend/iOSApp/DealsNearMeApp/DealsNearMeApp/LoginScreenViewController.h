//
//  LoginScreenViewController.h
//  DealsNearMeApp
//
//  Created by  on 7/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginScreenViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *fldUsername;


@property (strong, nonatomic) IBOutlet UITextField *fldPassword;

- (IBAction)btnLoginRegisterTapped:(UIButton *)sender;


- (IBAction)btnCancelTapped:(id)sender;

@end
