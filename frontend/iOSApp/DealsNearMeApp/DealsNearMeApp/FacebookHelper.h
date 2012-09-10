//
//  FacebookHelper.h

#import <Foundation/Foundation.h>
#import "FBConnect.h"

@interface FacebookHelper : NSObject <FBRequestDelegate, FBDialogDelegate, FBSessionDelegate> {
    Facebook* _facebook;
    NSArray* _permissions;
    
    // Internal state
    int score;
}

@property(readonly) Facebook *facebook;

+ (FacebookHelper *) sharedInstance;

#pragma mark - Public Methods
-(void) postToWallWithDialogNewHighscore:(int)highscore;

@end
