//
//  FavoritesViewController.m
//  DealsNearMeApp
//
//  Created by  on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) 

#define kLatestURL [NSURL URLWithString: @"http://api.kivaws.org/v1/loans/search.json?status=fundraising"]

#import "FavoritesViewController.h"
#import "NetworkFetcher.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController
@synthesize photos = _photos;
@synthesize favoriteDeals = _favoriteDeals;
//==============================================================================================
- (void) setPhotos:(NSArray *) photos
{
	if (_photos != photos)
	{
		_photos = photos;
		[self.tableView reloadData];
		
	}
}
//==============================================================================================
- (IBAction)doRefresh:(UIBarButtonItem *)sender 
{
	

	/* 	
	dispatch_queue_t downloadQueue = dispatch_queue_create("flickr downloader", NULL);
	dispatch_async(downloadQueue, ^
				   {
					   NSArray *photos = [FlickrFetcher recentGeoreferencedPhotos];
					   dispatch_async(dispatch_get_main_queue(),^
									  {

										  self.photos = photos;
										  
									  });
					   
				   });		
	dispatch_release(downloadQueue);
	 */
	NSLog(@"Refresh button was clicked");
	/* 
	dispatch_queue_t downloadQueue = dispatch_queue_create("flickr downloader", NULL);
	dispatch_async(downloadQueue, ^
				   {
					   NSArray *photos = [FlickrFetcher recentGeoreferencedDeals];
					   dispatch_async(dispatch_get_main_queue(),^
									  {
										  
										  self.photos = photos;
										  NSLog(@"If execution is here, it is the main queue");
										  
									  });
					   
				   });		
	dispatch_release(downloadQueue);
	*/
	/* 
	dispatch_queue_t downloadQueue = dispatch_queue_create("flickr downloader", NULL);
	dispatch_async(downloadQueue, ^
				   {
					   NSArray *photos = [NetworkFetcher recentDeals];
					   dispatch_async(dispatch_get_main_queue(),^
									  {
										  
										  self.photos = photos;
										  NSLog(@"If execution is here, it is the main queue");
										  
									  });
					   
				   });		
	dispatch_release(downloadQueue);
	*/
	[self doNetworkFetch];
	
	
}
-(void) doNetworkFetch 
{
	
	dispatch_queue_t downloadQueue = dispatch_queue_create("flickr downloader", NULL);
	dispatch_async(downloadQueue, ^
				   {
					   NSArray *photos = [NetworkFetcher recentDeals];
					   dispatch_async(dispatch_get_main_queue(),^
									  {
										  
										  self.photos = photos;
										  NSLog(@"If execution is here, it is the main queue");
										  
									  });
					   
				   });		
	dispatch_release(downloadQueue);
}

//==============================================================================================
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
//==============================================================================================
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	// figure out how to rewrite the following using
	// dispatch_async(dispatch_get_main_queue(), ^(){…});
	/* 
	dispatch_async(kBgQueue, ^{
        NSData* data = [NSData dataWithContentsOfURL:kLatestURL];
	 */
        /* 
		[self performSelectorOnMainThread:@selector(fetchedData:) 
							   withObject:data 
							waitUntilDone:YES];
		*/
	/*	
	dispatch_async(dispatch_get_main_queue(), ^()
		{
			[self fetchedData:data];
		});
    });
	*/
	/* 
	dispatch_queue_t downloadQueue = dispatch_queue_create("flickr downloader", NULL);
	dispatch_async(downloadQueue, ^
				   {
					   NSArray *photos = [FlickrFetcher recentGeoreferencedPhotos];
					   dispatch_async(dispatch_get_main_queue(),^
									  {

										  self.photos = photos;
										  
									  });
					   
				   });		
	dispatch_release(downloadQueue);
	 */
	
		/* [self doNetworkFetch]; */
    

    
}

- (void) viewDidAppear:(BOOL)animated
{
    NSData *favoriteDealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"favoritedealsarchive"];
	
	self.favoriteDeals = [NSKeyedUnarchiver unarchiveObjectWithData:favoriteDealsData];
    
	if ([self.favoriteDeals count] > 0)
	{
		NSLog(@"Favorite deals were found : %d", [self.favoriteDeals count]);
	}
    
    [self.tableView reloadData];
}
//==============================================================================================

- (void)viewDidUnload
{
	
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
//==============================================================================================
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
//==============================================================================================
#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MyFavoritesData";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
	
	NSDictionary *favoriteDeal = [self.favoriteDeals objectAtIndex:indexPath.row];
	
	
	UILabel *titleLabel = (UILabel *) [cell viewWithTag:100];
	/* 	cell.textLabel.text = [photo objectForKey:FLICKR_PHOTO_TITLE]; */
	titleLabel.text = [favoriteDeal objectForKey:NETWORK_DEAL_TITLE];
	
	UILabel *ownerLabel = (UILabel *) [cell viewWithTag:101];
	cell.detailTextLabel.text = [favoriteDeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
	ownerLabel.text = [favoriteDeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
	
    
	UIImageView *ratingImageView = (UIImageView *) [cell viewWithTag:102];
	
	ratingImageView.image  = [UIImage imageNamed:@"default_thumb.png"];
    
    
	
	
	
    
	
	
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	
    // Return the number of rows in the section.
    return [self.favoriteDeals count];
}



-(UIImage *) imageForRating:(int)rating
{
	switch(rating)
	{
		case 1: return [UIImage imageNamed:@"1StarSmall.png"];
		case 2: return [UIImage imageNamed:@"2StarsSmall.png"];
		case 3: return [UIImage imageNamed:@"3StarsSmall.png"];
		case 4: return [UIImage imageNamed:@"4StarsSmall.png"];
		case 5: return [UIImage imageNamed:@"5StarsSmall.png"];
	}
	return nil;
}
//==============================================================================================



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
	{
        
        @try {
                    [self.favoriteDeals removeObjectAtIndex:indexPath.row];
        }
        @catch (NSException *exception)
        {
            NSLog(@"------------%@", exception);
        }
        @finally
        {
            NSLog(@"------------finally------------");
            
            [self.tableView reloadData];

        }

        
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self.favoriteDeals];
        
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"favoritedealsarchive"];
        
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert)
	{
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }

    
}

#pragma mark UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}


//==============================================================================================

//==============================================================================================

@end
