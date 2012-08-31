//
//  NetworkDealAnnotation.m
//  DealsNearMeApp
//
//  Created by  on 8/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NetworkDealAnnotation.h"
#import "NetworkFetcher.h"

@implementation NetworkDealAnnotation


@synthesize deal = _deal;

+ (NetworkDealAnnotation *) annotationForDeal:(NSDictionary *) deal
{
	NetworkDealAnnotation *annotation = [[NetworkDealAnnotation alloc] init];
	annotation.deal = deal;
	return annotation;
}

-(NSString *) title
{
	return [self.deal objectForKey:NETWORK_DEAL_TITLE];
}

-(NSString *) subtitle
{
	return [self.deal valueForKeyPath:NETWORK_DEAL_DESCRIPTION];
}



-(CLLocationCoordinate2D) coordinate
{
	CLLocationCoordinate2D coordinate;
	coordinate.latitude = [[self.deal objectForKey:NETWORK_LATITUDE] doubleValue];
	coordinate.longitude = [[self.deal objectForKey:NETWORK_LONGITUDE] doubleValue];
	return coordinate;
}


@end
