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
	
	NSError *err = nil;
	
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	
	NSError *jsonError = nil;
	
	NSString *jsonFilePath = [NSString stringWithFormat:@"%@/%@", documentsDirectory,@"data.json"];
	
	NSData *jsonData = [NSData dataWithContentsOfFile:jsonFilePath options:kNilOptions error:&jsonError ];
	/*
    NSData *jsonData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:query] encoding:NSUTF8StringEncoding error:&err] dataUsingEncoding:NSUTF8StringEncoding];
	*/
	  if (jsonError) NSLog(@"[%@ %@] JSON err: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), jsonError.localizedDescription);
	
	NSLog(@"-------------------%@", [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding]);
	
	
	NSLog(@"-------------------------");
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


+ (NSArray *)recentDealsNearHome
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearhome.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

+ (NSArray *)recentDealsNearZip:(NSString *) zipCode
{
    /* 
	 NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearzipcode2.json"];
	 
	 */
	 
	/*
	NSString *request = [NSString stringWithFormat:@"http://88.198.27.219/api/api.php?cmd=deal&mode=get&session_id=x&filter2=60610&filter3=0.5&filter4=most_recent&api_key=5e02f0a5adfa1c198fff76f4678f584a"];
	*/
	
	
	

	
	
	NSString *request = [NSString stringWithFormat:@"http://88.198.27.219/api/api.php?cmd=deal&mode=get&session_id=x&filter2=%@&filter3=1&filter4=most_recent&api_key=5e02f0a5adfa1c198fff76f4678f584a", zipCode];
	

	
	
	// NSString *request = [NSString stringWithFormat:@"http://88.198.27.219/api/api.php?cmd=deal&mode=get&session_id=x&filter2=60610&filter3=1&filter4=most_recent&api_key=5e02f0a5adfa1c198fff76f4678f584a"];
	
	
	// NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/test.json"];
	
	/*
	NSString *request = [NSString stringWithFormat:@"http://api.flickr.com/services/rest/?method=flickr.photos.search&per_page=500&license=1,2,4,7&has_geo=1&extras=original_format,tags,description,geo,date_upload,owner_name,place_url&format=json&nojsoncallback=1&api_key=07a9a5938d3fa6c7f180fb0cb003327a"];
	 */
	
	
    return [[self executeJSONFetcher:request] valueForKeyPath:@"deals.deal"];
	
	
	
}

+ (NSDictionary *)executeJSONFetcher:(NSString *)query
{
    /* query = [NSString stringWithFormat:@"%@&format=json&nojsoncallback=1&api_key=%@", query, FlickrAPIKey]; */
    query = [query stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"[%@ %@] sent %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), query);
    NSData *jsonData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:query] encoding:NSUTF8StringEncoding error:nil] dataUsingEncoding:NSUTF8StringEncoding];
	
	
    NSError *error = nil;
    NSDictionary *results = jsonData ? [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves error:&error] : nil;
    if (error) NSLog(@"[%@ %@] JSON error: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), error.localizedDescription);
    NSLog(@"[%@ %@] received %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), results);
    return results;
}

+ (NSDictionary *) executeJSONFetchermethod:(NSString *)query
{
	NSString *urlstring=@"http://88.198.27.219/api/api.php?cmd=deal&mode=get&session_id=x&filter2=60610&filter3=1&filter4=most_recent&api_key=5e02f0a5adfa1c198fff76f4678f584a";
	query = [query stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"[%@ %@] sent %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), query);
	
	NSURL *URL = [NSURL URLWithString:urlstring];
	
	
	NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:URL];
	
	[request setHTTPMethod:@"POST"];
	[request setValue:[NSString stringWithFormat:@"%d", [urlstring length]] forHTTPHeaderField:@"Content-length"];
	[request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
	[request setHTTPBody:[urlstring dataUsingEncoding:NSUTF8StringEncoding]];
	
    NSURLResponse *resp = nil;
    NSError *err = nil;
	
    NSData *jsonData = [NSURLConnection sendSynchronousRequest:request returningResponse:&resp error:&err];
	/*
	NSData *jsonData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:query] encoding:NSUTF8StringEncoding error:nil] dataUsingEncoding:NSUTF8StringEncoding];
	*/
	NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
	NSLog(@"JsonString = %@",jsonString);
	
	//    NSString * theString = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
	//    NSLog(@"response: %@", theString);
	
	
	  NSDictionary *results = jsonData ? [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves|NSJSONReadingAllowFragments error:&err] : nil;
	
   // NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData: jsonData options: NSJSONReadingAllowFragments error: &err];
	/*
	const unsigned char *ptr = [jsonData bytes];
	
	for(int i=0; i<[jsonData length]; ++i) {
		unsigned char c = *ptr++;
		NSLog(@"char=%c hex=%x", c, c);
	}
	 */
	
    if (!results) {
        NSLog(@"Error parsing JSON: %@", err);
    } else {
        for(NSDictionary *item in results) {
            NSLog(@" %@", item);
            NSLog(@"---------------------------------");
        }
    }
	NSLog(@"[%@ %@] received %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), results);
    return results;
	
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

+ (void)writeJsonToFile:(NSString *)stringURL
{
	//applications Documents dirctory path
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	
	//live json data url

	NSURL *url = [NSURL URLWithString:stringURL];
	NSData *urlData = [NSData dataWithContentsOfURL:url];
	
    //attempt to download live data
    if (urlData)
    {
        NSString *filePath = [NSString stringWithFormat:@"%@/%@", documentsDirectory,@"data.json"];
        [urlData writeToFile:filePath atomically:YES];
    }
    //copy data from initial package into the applications Documents folder
    else
    {
        //file to write to
        NSString *filePath = [NSString stringWithFormat:@"%@/%@", documentsDirectory,@"data.json"];
		
        //file to copy from
        NSString *json = [ [NSBundle mainBundle] pathForResource:@"data" ofType:@"json" inDirectory:@"html/data" ];
        NSData *jsonData = [NSData dataWithContentsOfFile:json options:kNilOptions error:nil];
		
        //write file to device
        [jsonData writeToFile:filePath atomically:YES];
    }
}

@end
