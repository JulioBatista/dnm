//
//  DealsNetworkFetcher.m
//  DealsNearMeApp
//
//  Created by  on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DealsNetworkFetcher.h"

@implementation DealsNetworkFetcher


+ (NSDictionary *)executeJSONFetch:(NSString *)query
{
	/* query = [NSString stringWithFormat:@"%@&format=json&nojsoncallback=1&api_key=%@", query, FlickrAPIKey]; */
    query = [query stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    // NSLog(@"[%@ %@] sent %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), query);
    NSData *jsonData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:query] encoding:NSUTF8StringEncoding error:nil] dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    NSDictionary *results = jsonData ? [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves error:&error] : nil;
	
    if (error) NSLog(@"[%@ %@] JSON error: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), error.localizedDescription);
	
    // NSLog(@"[%@ %@] received %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), results);
    
	return results;
}

+ (NSMutableArray *)recentDealsNearLevia
{
	NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearlevia.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}


@end
