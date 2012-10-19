//
//  NetworkFetcher.h
//
//

#import <Foundation/Foundation.h>

#define NETWORK_DEAL_ID @"id"
#define NETWORK_DEAL_TITLE @"title"

#define NETWORK_DEAL_DEALNAME @"dealname"
#define NETWORK_DEAL_DESCRIPTION @"description"

#define NETWORK_DEAL_SECTOR @"sector"
#define NETWORK_PLACE_NAME @"_content"
#define NETWORK_DEAL_ID @"id"
#define NETWORK_LATITUDE @"lat"
#define NETWORK_LONGITUDE @"lng"
#define NETWORK_SHARE_URL @"share_url"

#define NETWORK_DEAL_DISTANCE_FROM_USERS_LATLNG @"distance_from_users_latlng_in_km"
#define NETWORK_DEAL_TIME_ELAPSED @"time_elapsed_since_deal_was_posted_in_hours"
#define NETWORK_DEAL_TOTAL_VIEWS @"totalviews"
#define NETWORK_DEAL_RELATIVE_STAR_RATING @"relative_star_rating"

#define NETWORK_DEAL_BUSINESSNAME @"business_name"

#define NETWORK_DEAL_ADDRESS @"business_address"
#define NETWORK_DEAL_BUSINESS_PHONE @"business_phone"

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
+ (NSArray *) recentDealsNearZipcode;



+ (NSArray *)recentDealsNearLatitude:(NSString *)latitude
						AndLongitude:(NSString *)longitude
						WithCategory:(NSString *)categoryID
						WithDistance:(NSUInteger)distance;

;

@end
