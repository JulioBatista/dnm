//
//  API.h
//  DealsNearMeApp
//
//  Created by  on 7/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AFNetworking.h"
#import "AFHTTPClient.h"

// API call completion block with result as json
typedef void (^JSONResponseBlock) (NSDictionary* json);

@interface API : AFHTTPClient

@property (strong, nonatomic) NSDictionary* user;

// check where there's an authorized user
- (BOOL) isAuthorized;

// send an API command to the server
- (void) commandWithParams:(NSMutableDictionary*)params onCompletion:(JSONResponseBlock)completionBlock;


+(API*)sharedInstance;
@end
