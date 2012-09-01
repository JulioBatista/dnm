//
//  NetworkFetcher.h
//
//

#import <Foundation/Foundation.h>

#define NETWORK_DEAL_TITLE @"title"
#define NETWORK_DEAL_DEALNAME @"dealname"
#define NETWORK_DEAL_DEALDESCRIPTION @"dealdescription"
#define NETWORK_DEAL_DESCRIPTION @"description"
#define NETWORK_DEAL_SECTOR @"sector"
#define NETWORK_PLACE_NAME @"_content"
#define NETWORK_DEAL_ID @"id"
#define NETWORK_LATITUDE @"latitude"
#define NETWORK_LONGITUDE @"longitude"
#define NETWORK_DEAL_OWNER @"business_name"
#define NETWORK_DEAL_ADDRESS @"business_address"
#define NETWORK_DEAL_PLACE_NAME @"derived_place"
#define NETWORK_DEAL_RATING @"rating"
#define NETWORK_TAGS @"tags"

typedef enum {
	FlickrPhotoFormatSquare = 1,
	FlickrPhotoFormatLarge = 2,
	FlickrPhotoFormatOriginal = 64
} FlickrPhotoFormat;

@interface NetworkFetcher : NSObject

+ (NSArray *)topPlaces;
+ (NSArray *)photosInPlace:(NSDictionary *)place maxResults:(int)maxResults;
+ (NSURL *)urlForPhoto:(NSDictionary *)photo format:(FlickrPhotoFormat)format;
+ (NSArray *)recentGeoreferencedPhotos;
+ (NSArray *)recentGeoreferencedDeals;
+ (NSArray *)recentDeals;
+ (NSArray *) recentDealsNearLevia;
+ (NSArray *)recentDealsNearSpoke;
+ (NSArray *)recentDealsNear60610;
+ (NSArray *)recentDealsNear60610_filter0_bars;
+ (NSArray *)recentDealsNear60610_filter0_travel;
+ (NSArray *)recentDealsNear60610_filter0_fun;
+ (NSArray *)recentDealsNear60610_filter0_services;
+ (NSArray *)recentDealsNear60610_filter0_dining;
+ (NSArray *)recentDealsNear60610_filter0_family;
+ (NSArray *)recentDealsNear60610_filter0_shopping;
+ (NSArray *)recentDealsNear60610_filter0_wellness;

@end
