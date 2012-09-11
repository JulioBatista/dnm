//
//  FacebookHelper.h

#import <Foundation/Foundation.h>
#import "FBConnect.h"

#define kFBAccessTokenKey  @"AccessToken"
#define kFBExpirationDateKey  @"ExpirationDate"

@interface FacebookHelper : NSObject <FBRequestDelegate, FBDialogDelegate, FBSessionDelegate>
{
    Facebook* _facebook;
    NSArray* _permissions;
    
    // Internal state
    int score;
}

@property(readonly) Facebook *facebook;

@property (nonatomic) BOOL isLoggedIn;

+ (FacebookHelper *) sharedInstance;

#pragma mark - Public Methods

-(void) login;

- (void)authorize;

-(void) postToWallWithDialogNewHighscore:(int)highscore;

- (void) logout;

@end
