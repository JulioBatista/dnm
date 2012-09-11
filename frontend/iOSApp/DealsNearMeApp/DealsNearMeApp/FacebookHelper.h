//
//  FacebookHelper.h

#import <Foundation/Foundation.h>
#import "FBConnect/FBConnect.h"

#define kFBAccessTokenKey  @"AccessToken"
#define kFBExpirationDateKey  @"ExpirationDate"

@interface FacebookHelper : NSObject <FBRequestDelegate, FBDialogDelegate, FBSessionDelegate>
{
    Facebook* _facebook;
    NSArray* _permissions;
    
    // Internal state
    int score;
	
	NSString *themessage;
}

@property(readonly) Facebook *facebook;

@property (nonatomic) BOOL isLoggedIn;

@property (nonatomic) BOOL isForPostingScore;

+ (FacebookHelper *) sharedInstance;

#pragma mark - Public Methods

-(void) login;

- (void)authorize;

-(void) postToWallWithDialogNewHighscore:(int)highscore;

-(void) postToWallWithDialogFeedMessage:(NSString *)feedmessage;

- (void) logout;

@end
