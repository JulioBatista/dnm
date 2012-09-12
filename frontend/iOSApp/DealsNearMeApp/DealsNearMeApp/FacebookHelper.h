//
//  FacebookHelper.h

#import <Foundation/Foundation.h>
#import "FBConnect/FBConnect.h"

#define kFBAccessTokenKey  @"AccessToken"
#define kFBExpirationDateKey  @"ExpirationDate"

@class FacebookHelper;

@protocol FacebookHelperDelegate <NSObject>

- (void) facebookHelperDidLogin:(FacebookHelper *) facebookHelper;

- (void) facebookHelperDidNotLogin:(FacebookHelper *) facebookHelper;

- (void) facebookHelperDidLogout:(FacebookHelper *) facebookHelper;

- (void) facebookHelper:(FacebookHelper *)facebookHelper
                request:(FBRequest *) request
                didLoad:(id)result;


@end

@protocol FacebookHelperPublishingDelegate <NSObject>

- (void)  facebookHelperDidPublish:(FacebookHelper *)facebookHelper;

@end

@interface FacebookHelper : NSObject <FBRequestDelegate, FBDialogDelegate, FBSessionDelegate>
{
    Facebook* _facebook;
    NSArray* _permissions;
    
    // Internal state
    int score;
	
	NSString *themessage;
}

@property (nonatomic, weak) id<FacebookHelperDelegate> delegate;

@property (nonatomic, weak) id<FacebookHelperPublishingDelegate> publishingdelegate;

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
