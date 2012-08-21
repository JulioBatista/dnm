//
//  DealsNetworkFetcher.h
//  DealsNearMeApp
//
//  Created by  on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DealsNetworkFetcher : NSObject
+ (NSDictionary *)executeJSONFetch:(NSString *)query;
+ (NSMutableArray *)recentDealsNearLevia;
@end
