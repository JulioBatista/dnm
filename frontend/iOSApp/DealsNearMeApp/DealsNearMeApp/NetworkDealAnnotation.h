//
//  NetworkDealAnnotation.h
//  DealsNearMeApp
//
//  Created by  on 8/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"



@interface NetworkDealAnnotation : NSObject<MKAnnotation>

+ (NetworkDealAnnotation *) annotationForDeal:(NSDictionary *) deal; // Network deal dictionary

@property (nonatomic, strong) NSDictionary *deal;


@end
