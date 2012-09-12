//
//  FacebookHelper.m




#import "FacebookHelper.h"

static NSString* kAppId = @"192353644230893"; // Your Facebook app ID here

#define kAppName        @"DealsNearMe"
#define kCustomMessage  @"I just got a score of %d in %@, the best app on Facebook!"
#define kDealMessage    @"%@ Posted via %@"
#define kServerLink     @"http://dealsnear.me"
#define kImageSrc       @"http://199.102.228.10/~deals/api/dnm_logo_44x44.png"

@implementation FacebookHelper

@synthesize facebook = _facebook;
@synthesize isLoggedIn = _isLoggedIn;
@synthesize isForPostingScore = _isForPostingScore;

@synthesize delegate = _delegate;
#pragma mark -
#pragma mark Singleton Variables
static FacebookHelper *singletonDelegate = nil;

#pragma mark -
#pragma mark Singleton Methods
- (id)init
{
    if (!kAppId)
	{
        NSLog(@"MISSING APP ID!!!");
        exit(1);
        return nil;
    }
    
    if ((self = [super init]))
	{
        
        _facebook = [[Facebook alloc] initWithAppId:kAppId andDelegate:self];
        _facebook.accessToken    = [[NSUserDefaults standardUserDefaults] stringForKey:@"AccessToken"];
        _facebook.expirationDate = (NSDate *) [[NSUserDefaults standardUserDefaults] objectForKey:@"ExpirationDate"];
        
        //_permissions =  [[NSArray arrayWithObjects: @"read_stream", @"publish_stream", @"offline_access",nil] retain];
        _permissions =  [NSArray arrayWithObjects: @"read_stream", @"publish_stream", nil];
        
        // _permissions =  [NSArray arrayWithObjects:@"publish_stream", nil] ;
		
		
		self.isForPostingScore = NO;
        
    }
    
    return self;
}

+ (FacebookHelper *)sharedInstance
{
	@synchronized(self) {
		if (singletonDelegate == nil)
		{
			[[self alloc] init]; // assignment not done here
		}
	}
	return singletonDelegate;
}

+ (id)allocWithZone:(NSZone *)zone
{
	@synchronized(self)
	{
		if (singletonDelegate == nil)
		{
			singletonDelegate = [super allocWithZone:zone];
			// assignment and return on first allocation
			return singletonDelegate;
		}
	}
	// on subsequent allocation attempts return nil
	return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
	return self;
}


#pragma mark - Private Methods

- (void)logout
{
    [_facebook logout];
}


-(void) login
{
    // Check if there is a valid session
    if (![_facebook isSessionValid]) {
        [_facebook authorize:_permissions];
    }
    else {
        [_facebook requestWithGraphPath:@"me" andDelegate:self];
    }
}

-(NSMutableDictionary*) buildPostParamsWithHighscore:(int)highscore
{
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


-(NSMutableDictionary*) buildPostParamsWithFeedMessage:(NSString *)feedmessage
{
    NSString *dealMessage = [NSString stringWithFormat:kDealMessage, feedmessage, kAppName];
    NSString *postName = kAppName;
    NSString *serverLink = [NSString stringWithFormat:kServerLink];
    NSString *imageSrc = kImageSrc;
    
    // Final params build.
    NSMutableDictionary* params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   // dealMessage, @"message",
                                   imageSrc, @"picture",
                                   serverLink, @"link",
                                   postName, @"name",
                                   dealMessage, @"caption",
								   dealMessage, @"description",
                                   nil];
    
    return params;
}


-(void) postToWallWithDialogNewHighscore
{
    NSMutableDictionary* params = [self buildPostParamsWithHighscore:score];
    
    // Post on Facebook.
    [_facebook dialog:@"feed" andParams:params andDelegate:self];
}

-(void) postToWallWithDialogFeedMessage
{
    NSMutableDictionary* params = [self buildPostParamsWithFeedMessage:themessage];
    
    // Post on Facebook.
    [_facebook dialog:@"feed" andParams:params andDelegate:self];
}

#pragma mark - Public Methods
- (void)authorize
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:kFBAccessTokenKey] && [defaults objectForKey:kFBExpirationDateKey])
	{
        _facebook.accessToken = [defaults objectForKey:kFBAccessTokenKey];
		_facebook.expirationDate = [defaults objectForKey:kFBExpirationDateKey];
    }
	
    if (![_facebook isSessionValid])
	{
        NSArray *permissions =  [NSArray arrayWithObjects:@"email", @"user_about_me", nil];
		
        [_facebook authorize:_permissions];
		
		NSLog(@"------------email : %@", [permissions objectAtIndex:0]);
		
		NSLog(@"------------user_about_me : %@", [permissions objectAtIndex:1]);
		
		
    }
}
-(void) postToWallWithDialogNewHighscore:(int)highscore
{
    score = highscore;
    
    if (![_facebook isSessionValid])
	{
        [_facebook authorize:_permissions];
    }
    else {
		if (self.isForPostingScore ==YES)
		{
         // [self postToWallWithDialogNewHighscore];
					NSLog(@"=suppressing the dialog that was supposed to pop up here for debugging");
			
		}
    }
}

-(void) postToWallWithDialogFeedMessage:(NSString *)feedmessage
{
    themessage = feedmessage;
    
    if (![_facebook isSessionValid])
	{
        [_facebook authorize:_permissions];
    }
    else {
		if (self.isForPostingScore ==YES)
		{
			[self postToWallWithDialogFeedMessage];
			NSLog(@"=suppressing the dialog that was supposed to pop up here for debugging");
			
		}
    }
}

#pragma mark - FBDelegate Methods

- (void)fbDidLogin
{
    NSLog(@"FB login OK---------");
    
    [self.delegate facebookHelperDidLogin:self];
    
    
    // Store session info.
    [[NSUserDefaults standardUserDefaults] setObject:_facebook.accessToken forKey:@"AccessToken"];
    [[NSUserDefaults standardUserDefaults] setObject:_facebook.expirationDate forKey:@"ExpirationDate"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
	if (self.isForPostingScore ==YES)
	{
		// [self postToWallWithDialogNewHighscore];
		//NSLog(@"-suppressing the dialog that was supposed to pop up here for debugging");
			[self postToWallWithDialogFeedMessage];
	}

	
	self.isLoggedIn = YES;
}

/**
 * Called when the user canceled the authorization dialog.
 */
-(void)fbDidNotLogin:(BOOL)cancelled
{
    NSLog(@"FB did not login");
	self.isLoggedIn = NO;
    [self.delegate facebookHelperDidNotLogin:self];
}

/**
 * Called when the request logout has succeeded.
 */
- (void)fbDidLogout
{
    NSLog(@"FB logout OK");
    
    // Release stored session.
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"AccessToken"];
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"ExpirationDate"];
    [[NSUserDefaults standardUserDefaults] synchronize];
	
    [self.delegate facebookHelperDidLogout:self];
	self.isLoggedIn = NO;
}

/**
 * Called after the access token was extended. If your application has any
 * references to the previous access token (for example, if your application
 * stores the previous access token in persistent storage), your application
 * should overwrite the old access token with the new one in this method.
 * See extendAccessToken for more details.
 */
- (void)fbDidExtendToken:(NSString*)accessToken
               expiresAt:(NSDate*)expiresAt
{
    
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
- (void)request:(FBRequest *)request didFailWithError:(NSError *)error
{
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
