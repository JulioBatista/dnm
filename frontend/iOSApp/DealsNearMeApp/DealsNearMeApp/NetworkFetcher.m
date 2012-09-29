//
//  NetworkFetcher.m
//
//

#import "NetworkFetcher.h"
#import "FlickrAPIKey.h"

#define FLICKR_PLACE_ID @"place_id"

@implementation NetworkFetcher

+ (NSDictionary *)executeFlickrFetch:(NSString *)query
{
    query = [NSString stringWithFormat:@"%@&format=json&nojsoncallback=1&api_key=%@", query, FlickrAPIKey];
    query = [query stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    // NSLog(@"[%@ %@] sent %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), query);
    NSData *jsonData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:query] encoding:NSUTF8StringEncoding error:nil] dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    NSDictionary *results = jsonData ? [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves error:&error] : nil;
    if (error) NSLog(@"[%@ %@] JSON error: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), error.localizedDescription);
    // NSLog(@"[%@ %@] received %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), results);
    return results;
}
+ (NSDictionary *)executeJSONFetch:(NSString *)query
{
    /* query = [NSString stringWithFormat:@"%@&format=json&nojsoncallback=1&api_key=%@", query, FlickrAPIKey]; */
	query = [query stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	
	
	// query = [query stringByReplacingOccurrencesOfString:@"+" withString:@" "];
	// query = [query stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	// query = [query stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:@""];
	// int lastChar = [query length]-1;
	// query = [query stringByReplacingCharactersInRange:NSMakeRange(lastChar,1) withString:@""];
	// query = [query stringByReplacingOccurrencesOfString:@"\\" withString:@""];
	
    NSLog(@"[%@ %@] sent %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), query); 
	
    NSData *jsonData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:query] encoding:NSUTF8StringEncoding error:nil] dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    NSDictionary *results = jsonData ? [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves error:&error] : nil;
	
    if (error) NSLog(@"[%@ %@] JSON error: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), error.localizedDescription);
	
     NSLog(@"[%@ %@] received %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), results); 
    
	return results;
}
+ (NSArray *)topPlaces
{
    NSString *request = [NSString stringWithFormat:@"http://api.flickr.com/services/rest/?method=flickr.places.getTopPlacesList&place_type_id=7"];
    return [[self executeFlickrFetch:request] valueForKeyPath:@"places.place"];
}

+ (NSArray *)stanfordPhotos
{
    NSString *request = @"http://api.flickr.com/services/rest/?user_id=48247111@N07&format=json&nojsoncallback=1&extras=original_format,tags,description,geo,date_upload,owner_name&page=1&method=flickr.photos.search";
    return [[self executeFlickrFetch:request] valueForKeyPath:@"photos.photo"];
}

+ (NSArray *)photosInPlace:(NSDictionary *)place maxResults:(int)maxResults
{
    NSArray *photos = nil;
    NSString *placeId = [place objectForKey:FLICKR_PLACE_ID];
    if (placeId) {
        NSString *request = [NSString stringWithFormat:@"http://api.flickr.com/services/rest/?method=flickr.photos.search&place_id=%@&per_page=%d&extras=original_format,tags,description,geo,date_upload,owner_name,place_url", placeId, maxResults];
        NSString *placeName = [place objectForKey:NETWORK_PLACE_NAME];
        photos = [[self executeFlickrFetch:request] valueForKeyPath:@"photos.photo"];
        for (NSMutableDictionary *photo in photos) {
            [photo setObject:placeName forKey:NETWORK_DEAL_PLACE_NAME];
        }
    }
    return photos;
}

#pragma mark Helpers

+ (NSArray *)recentGeoreferencedPhotos
{
    NSString *request = [NSString stringWithFormat:@"http://api.flickr.com/services/rest/?method=flickr.photos.search&per_page=500&license=1,2,4,7&has_geo=1&extras=original_format,tags,description,geo,date_upload,owner_name,place_url"];
    return [[self executeFlickrFetch:request] valueForKeyPath:@"photos.photo"];
}

+ (NSArray *)recentGeoreferencedDeals
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentgeoreferencedphotos.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"photos.photo"];
}

+ (NSArray *)recentDeals
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdeals.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNearLevia
{
    /* NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearlevia.json"];
     */
    
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearlevia_kill.json"];
    
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNearSpoke
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearspoke.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNear60610
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNear60610_filter0_bars
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610_filter0_bars.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNear60610_filter0_travel
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610_filter0_travel.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNear60610_filter0_fun
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610_filter0_fun.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}
+ (NSArray *)recentDealsNear60610_filter0_services
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610_filter0_services.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}
+ (NSArray *)recentDealsNear60610_filter0_dining
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610_filter0_dining.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNear60610_filter0_family
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610_filter0_family.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}
+ (NSArray *)recentDealsNear60610_filter0_shopping
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610_filter0_shopping.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}
+ (NSArray *)recentDealsNear60610_filter0_wellness
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnear60610_filter0_wellness.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}
+ (NSArray *)recentDealsNearHome
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearhome.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNearZip
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearzipcode2.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}


+ (NSArray *)recentDealsNearZipcode
{
	NSString *apiString = @"http://api.dealsnear.me/api/api.php?cmd=deal&mode=get&session_id=x&filter2=30307&filter3=2&filter4=most_recent&api_key=v8Flc@d[7Vgq0e%5Ep";
	
	
    NSString *request = [NSString stringWithFormat:@"%@", apiString];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}





+ (NSArray *)recentDealsNearZipcode2
{
	NSString *apiString = @"http://81.142.254.10/api/api.php?cmd=deal&mode=get&session_id=x&filter2=60610&filter3=2&filter4=most_recent&api_key=ABCD1234";
	
	
    NSString *request = [NSString stringWithFormat:@"%@", apiString];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}
+ (NSString *)urlStringForPhoto:(NSDictionary *)photo format:(FlickrPhotoFormat)format
{
	id farm = [photo objectForKey:@"farm"];
	id server = [photo objectForKey:@"server"];
	id photo_id = [photo objectForKey:@"id"];
	id secret = [photo objectForKey:@"secret"];
	if (format == FlickrPhotoFormatOriginal) secret = [photo objectForKey:@"originalsecret"];
    
	NSString *fileType = @"jpg";
	if (format == FlickrPhotoFormatOriginal) fileType = [photo objectForKey:@"originalformat"];
	
	if (!farm || !server || !photo_id || !secret) return nil;
	
	NSString *formatString = @"s";
	switch (format) {
		case FlickrPhotoFormatSquare:    formatString = @"s"; break;
		case FlickrPhotoFormatLarge:     formatString = @"b"; break;
			// case FlickrPhotoFormatThumbnail: formatString = @"t"; break;
			// case FlickrPhotoFormatSmall:     formatString = @"m"; break;
			// case FlickrPhotoFormatMedium500: formatString = @"-"; break;
			// case FlickrPhotoFormatMedium640: formatString = @"z"; break;
		case FlickrPhotoFormatOriginal:  formatString = @"o"; break;
	}
    
	return [NSString stringWithFormat:@"http://farm%@.static.flickr.com/%@/%@_%@_%@.%@", farm, server, photo_id, secret, formatString, fileType];
}

+ (NSURL *)urlForPhoto:(NSDictionary *)photo format:(FlickrPhotoFormat)format
{
    return [NSURL URLWithString:[self urlStringForPhoto:photo format:format]];
}

@end
