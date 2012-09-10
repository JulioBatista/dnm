//
//  FacebookHelper.m




#import "FacebookHelper.h"

static NSString* kAppId = @"192353644230893"; // Your Facebook app ID here

#define kAppName        @"DealsNearMe"
#define kCustomMessage  @"I just got a score of %d in %@, the best app on Facebook!"
#define kServerLink     @"http://dealsnear.me"
#define kImageSrc       @"http://199.102.228.10/~deals/api/dnm_logo_44x44.png"

@implementation FacebookHelper

@synthesize facebook = _facebook;

#pragma mark -
#pragma mark Singleton Variables
static FacebookHelper *singletonDelegate = nil;

#pragma mark -
#pragma mark Singleton Methods
- (id)init {
    if (!kAppId) {
        NSLog(@"MISSING APP ID!!!");
        exit(1);
        return nil;
    }
    
    if ((self = [super init])) {
        
        _facebook = [[Facebook alloc] initWithAppId:kAppId andDelegate:self];
        _facebook.accessToken    = [[NSUserDefaults standardUserDefaults] stringForKey:@"AccessToken"];
        _facebook.expirationDate = (NSDate *) [[NSUserDefaults standardUserDefaults] objectForKey:@"ExpirationDate"];
        
        //_permissions =  [[NSArray arrayWithObjects: @"read_stream", @"publish_stream", @"offline_access",nil] retain];
        //_permissions =  [[NSArray arrayWithObjects: @"read_stream", @"publish_stream", nil] retain];
        
        _permissions =  [NSArray arrayWithObjects:@"publish_stream", nil] ;
        
    }
    
    return self;
}

+ (FacebookHelper *)sharedInstance {
	@synchronized(self) {
		if (singletonDelegate == nil) {
			[[self alloc] init]; // assignment not done here
		}
	}
	return singletonDelegate;
}

+ (id)allocWithZone:(NSZone *)zone {
	@synchronized(self) {
		if (singletonDelegate == nil) {
			singletonDelegate = [super allocWithZone:zone];
			// assignment and return on first allocation
			return singletonDelegate;
		}
	}
	// on subsequent allocation attempts return nil
	return nil;
}

- (id)copyWithZone:(NSZone *)zone {
	return self;
}


#pragma mark - Private Methods

-(void) login {
    // Check if there is a valid session
    if (![_facebook isSessionValid]) {
        [_facebook authorize:_permissions];
    }
    else {
        [_facebook requestWithGraphPath:@"me" andDelegate:self];
    }
}

-(NSMutableDictionary*) buildPostParamsWithHighscore:(int)highscore {
    NSString *customMessage = [NSString stringWithFormat:kCustomMessage, highscore, kAppName];
    NSString *postName = kAppName;
    NSString *serverLink = [NSString stringWithFormat:kServerLink];
    NSString *imageSrc = kImageSrc;
    
    // Final params build.
    NSMutableDictionary* params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   //@"message", @"message",
                                   imageSrc, @"picture",
                                   serverLink, @"link",
                                   postName, @"name",
                                   @" ", @"caption",
                                   customMessage, @"description",
                                   nil];
    
    return params;
}

-(void) postToWallWithDialogNewHighscore {
    NSMutableDictionary* params = [self buildPostParamsWithHighscore:score];
    
    // Post on Facebook.
    [_facebook dialog:@"feed" andParams:params andDelegate:self];
}

#pragma mark - Public Methods

-(void) postToWallWithDialogNewHighscore:(int)highscore {
    score = highscore;
    
    if (![_facebook isSessionValid]) {
        [_facebook authorize:_permissions];
    }
    else {
        [self postToWallWithDialogNewHighscore];
    }
}

#pragma mark - FBDelegate Methods

- (void)fbDidLogin {
    NSLog(@"FB login OK");
    
    // Store session info.
    [[NSUserDefaults standardUserDefaults] setObject:_facebook.accessToken forKey:@"AccessToken"];
    [[NSUserDefaults standardUserDefaults] setObject:_facebook.expirationDate forKey:@"ExpirationDate"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self postToWallWithDialogNewHighscore];
}

/**
 * Called when the user canceled the authorization dialog.
 */
-(void)fbDidNotLogin:(BOOL)cancelled
{
    NSLog(@"FB did not login");
}

/**
 * Called when the request logout has succeeded.
 */
- (void)fbDidLogout {
    NSLog(@"FB logout OK");
    
    // Release stored session.
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"AccessToken"];
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"ExpirationDate"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/**
 * Called after the access token was extended. If your application has any
 * references to the previous access token (for example, if your application
 * stores the previous access token in persistent storage), your application
 * should overwrite the old access token with the new one in this method.
 * See extendAccessToken for more details.
 */
- (void)fbDidExtendToken:(NSString*)accessToken
               expiresAt:(NSDate*)expiresAt {
    
}

/**
 * Called when the current session has expired. This might happen when:
 *  - the access token expired
 *  - the app has been disabled
 *  - the user revoked the app's permissions
 *  - the user changed his or her password
 */
- (void)fbSessionInvalidated
{
    
}

/**
 * Called when a request returns and its response has been parsed into
 * an object.
 *
 * The resulting object may be a dictionary, an array, a string, or a number,
 * depending on thee format of the API response.
 */
- (void)request:(FBRequest *)request didLoad:(id)result
{
    NSLog(@"FB request OK");
}

/**
 * Called when an error prevents the Facebook API request from completing
 * successfully.
 */
- (void)request:(FBRequest *)request didFailWithError:(NSError *)error {
    NSLog(@"FB error: %@", [error localizedDescription]);
}

/**
 * Called when a UIServer Dialog successfully return.
 */
- (void)dialogDidComplete:(FBDialog *)dialog
{
    NSLog(@"published successfully on FB");
}

@end
