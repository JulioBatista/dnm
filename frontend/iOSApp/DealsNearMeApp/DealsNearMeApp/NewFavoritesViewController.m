//
//  NewFavoritesViewController.m
//  DealsNearMeApp
//
//  Created by  on 9/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NewFavoritesViewController.h"
#import "NetworkFetcher.h"

@interface NewFavoritesViewController ()

@end

@implementation NewFavoritesViewController
@synthesize favoritesTableView = _favoritesTableView;
@synthesize favoriteDeals = _favoriteDeals;
@synthesize myTableViewController = _myTableViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark ViewLifeCycle



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	

	
	myTableViewController = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
	
	myTableViewController.tableView = favoritesTableView;
	
	self.favoritesTableView.delegate = self;
	
	self.favoritesTableView.dataSource = self;

}

- (void) viewDidAppear:(BOOL)animated
{
    NSData *favoriteDealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"favoritedealsarchive"];
	
	self.favoriteDeals = [NSKeyedUnarchiver unarchiveObjectWithData:favoriteDealsData];
    
	if ([self.favoriteDeals count] > 0)
	{
		NSLog(@"Favorite deals were found : %d", [self.favoriteDeals count]);
	}
    
    [self.favoritesTableView reloadData];
}

- (void)viewDidUnload
{
	[self setFavoritesTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	
    // Return the number of sections.
	
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	
	return [self.favoriteDeals count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"FavoritesCell";
    UITableViewCell *cell = [self.favoritesTableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	return cell.frame.size.height;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	
	
	static NSString *CellIdentifier = @"FavoritesCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
	
	NSDictionary *favoriteDeal = [self.favoriteDeals objectAtIndex:indexPath.row];
	
	
	UILabel *titleLabel = (UILabel *) [cell viewWithTag:200];
	/* 	cell.textLabel.text = [photo objectForKey:FLICKR_PHOTO_TITLE]; */
	titleLabel.text = [favoriteDeal objectForKey:NETWORK_DEAL_TITLE];
	
	UILabel *ownerLabel = (UILabel *) [cell viewWithTag:201];
	cell.detailTextLabel.text = [favoriteDeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
	ownerLabel.text = [favoriteDeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
	
    
	UIImageView *ratingImageView = (UIImageView *) [cell viewWithTag:202];
	
	ratingImageView.image  = [UIImage imageNamed:@"default_thumb.png"];
    
    
	
	
	
    
	
	
    return cell;
}



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
            
            [self.favoritesTableView reloadData];
			
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



#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"FromFavoritesToDealDetailSegue"])
	{
		NSLog(@"Wonder if the prepareForSegue is getting called %@", segue.destinationViewController);
        
       
		/*
		UITableViewCell *cell = (UITableViewCell *) sender;
        
        NSIndexPath *indexPath = [self.dealsTableView indexPathForCell:cell];
                
        
        DealDetailViewController *dest = [segue destinationViewController];
        

		
		dest.dealnum = [[NSNumber alloc] initWithInteger:indexPath.row];
        
        
		
        NSLog(@"---------------DealDetailSegue %@", dest.dealnum );
		
		*/
        
		/*
		 if ([segue.destinationViewController respondsToSelector:@selector(setMapDeal:)])
		 {
		 [segue.destinationViewController performSelector:@selector(setMapDeal:)
		 withObject:sender];
		 }
		 */
		NSLog(@"---------------end of prepareForSegue " );
		
	}
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"This should get called before prepareForSegue gets called");
	
	[self performSegueWithIdentifier:@"FromFavoritesToDealDetailSegue" sender:self];
}



@end






















