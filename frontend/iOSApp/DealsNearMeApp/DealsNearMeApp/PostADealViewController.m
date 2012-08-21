//
//  PostADealViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PostADealViewController.h"
#import "MapDeal.h"

@interface PostADealViewController ()

@end

@implementation PostADealViewController
@synthesize mapdeals = _mapdeals;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (NSDictionary *)executeJSONFetch:(NSString *)query
{
    /* query = [NSString stringWithFormat:@"%@&format=json&nojsoncallback=1&api_key=%@", query, FlickrAPIKey]; */
    query = [query stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    // NSLog(@"[%@ %@] sent %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), query);
    NSData *jsonData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:query] encoding:NSUTF8StringEncoding error:nil] dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    NSDictionary *results = jsonData ? [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves error:&error] : nil;
	
    if (error) NSLog(@"[%@ %@] JSON error: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), error.localizedDescription);
	
    // NSLog(@"[%@ %@] received %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), results);
    
	return results;
}

- (NSMutableArray *)recentDealsNearLevia
{
    NSString *request = [NSString stringWithFormat:@"http://199.102.228.10/~deals/api/recentdealsnearlevia.json"];
    return [[self executeJSONFetch:request] valueForKeyPath:@"deals.deal"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

	
	
	self.mapdeals = [self recentDealsNearLevia];
	

	
	NSUInteger numdeals = [self.mapdeals count];

	NSLog(@"How many deals were parsed out %d", numdeals);
	
	for (int i=0; i < numdeals; i++)
	{
		NSDictionary *onedeal;
		
		onedeal = [self.mapdeals objectAtIndex:i];
		
		/* NSLog(@"Here we print out the dealname %@----", [onedeal objectForKey:@"dealname"]); */
		
		NSLog(@"We should print out what onedeal looks like here %@", onedeal);
		
		NSLog(@"Printing out the dealname %@", [[onedeal objectForKey:@"description"] objectForKey:@"_content"]);
		
		
			  
	}
	
	NSLog(@"-------Returning number of objects in mapdeals %d", [self.mapdeals count]);

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
