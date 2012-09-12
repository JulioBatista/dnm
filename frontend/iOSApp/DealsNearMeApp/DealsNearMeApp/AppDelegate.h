//
//  AppDelegate.h
//  DealsNearMeApp
//
//  Created by  on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialLoginViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (nonatomic, strong) SocialLoginViewController *socialLoginViewController;
@end
