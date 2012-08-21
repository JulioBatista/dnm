//
//  NewDeal.h
//  DealsNearMeApp
//
//  Created by  on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewDeal : NSObject

@property (nonatomic, copy) NSString *dealname;
@property (nonatomic, copy) NSString *dealdistance;
@property (nonatomic, copy) NSString *dealtimeinfo;
@property (nonatomic, copy) NSString *dealdescription;
@property (nonatomic, assign) int dealstats;

@end
