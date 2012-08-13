//
//  NetworkFetcher.h
//
//

#import <Foundation/Foundation.h>

#define NETWORK_DEAL_TITLE @"title"
#define NETWORK_DEAL_DESCRIPTION @"description._content"
#define NETWORK_PLACE_NAME @"_content"
#define NETWORK_DEAL_ID @"id"
#define NETWORK_LATITUDE @"latitude"
#define NETWORK_LONGITUDE @"longitude"
#define NETWORK_DEAL_OWNER @"businessname"
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

@end
