//
//  API.m
//  DealsNearMeApp
//
//  Created by  on 7/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "API.h"
#define kAPIHost @"http://199.102.228.10/~deals/api/"
#define kAPIPath @""



@implementation API

@synthesize user;

#pragma mark - Singleton methods

/*
*	
 */

+(API*) sharedInstance
{
	static API *sharedInstance = nil;
	static dispatch_once_t oncePredicate;
	
	dispatch_once(&oncePredicate, ^{
        sharedInstance = [[self alloc] initWithBaseURL:[NSURL URLWithString:kAPIHost]];
    });
	 
	 return sharedInstance;
	
}

#pragma mark init

// initialize the API class with the destination host name


- (API *) init
{
	// call super init
	self = [super init];
	
	if (self != nil)
	{
		user = nil;
		
		[self registerHTTPOperationClass:[AFJSONRequestOperation class]];
		
		// Accept HTTP Header; see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1
        [self setDefaultHeader:@"Accept" value:@"application/json"];
		
	}
	return self;
}

-(BOOL)isAuthorized
{
    return [[user objectForKey:@"IdUser"] intValue]>0;
}


-(void)commandWithParams:(NSMutableDictionary*)params onCompletion:(JSONResponseBlock)completionBlock
{
	// create an NSMutableRequest instance using the parameters you want to send via POST
    NSMutableURLRequest *apiRequest = 
	[self multipartFormRequestWithMethod:@"POST" 
									path:kAPIPath 
							  parameters:params 
			   constructingBodyWithBlock: ^(id <AFMultipartFormData>formData) {
				   //TODO: attach file if needed
			   }];
	
	
	// create an operation to handle the network communication in the background and 
	// initialize it with the POST request prepared
	
    AFJSONRequestOperation* operation = [[AFJSONRequestOperation alloc] initWithRequest: apiRequest];
	
	// set 2 blocks to execute on success and failure
	
	
	
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) 
	{
        //success!
        completionBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) 
	{
        //failure :(
		// construct a new dictionary holding the message of the network error and pass it back
		
        completionBlock([NSDictionary dictionaryWithObject:[error localizedDescription] forKey:@"error"]);
    }];
	
	// call the start method on the operation, and at that point AFNetworking starts 
	// running in the background
	
	NSLog(@"operation is about to start %@", operation);
	
    [operation start];
}
@end













