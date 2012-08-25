//
//  MapViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"
#import "MyAnnotation.h"
#import "MapKit/MapKit.h"
#import "NetworkFetcher.h"
#import "NetworkDealAnnotation.h"
#import "NewDeal.h"
#import "DealCell.h"
#import "DealDetailViewController.h"

@interface MapViewController ()
@property (strong, nonatomic) IBOutlet MKMapView *map;


#pragma mark for map

-(void) geocode:(NSString *) address;
-(void) locateMeOnMap:(CLLocation *) c;
- (void)categoryPressed:(UIButton*)sender;
@end

@implementation MapViewController
@synthesize buttonToggle = _buttonToggle;
@synthesize dealsTableView = _dealsTableView;
@synthesize annotations = _annotations;
@synthesize buttonToggleScrollView = _buttonToggleScrollView;
@synthesize buttonListButton = _buttonListButton;
@synthesize scrollView = _scrollView;
@synthesize map = _map;
@synthesize locationLabel = _locationLabel;
@synthesize addressLabel = _addressLabel;
@synthesize deals = _deals;
@synthesize newdeals = _newdeals;
@synthesize isMapVisible = _isMapVisible;
@synthesize isScrollViewVisible = _isScrollViewVisible;
@synthesize myTableViewController = _myTableViewController;
@synthesize locationTimer = _locationTimer;



#pragma mark setters

-(void) setDeals:(NSArray *)deals
{
	if (_deals != deals)
	{
		_deals = deals;
		[self updateMapViewMap];
		 [self.dealsTableView reloadData]; 
	}
}

- (NSArray *) mapAnnotations
{
	NSMutableArray *annotations = [NSMutableArray arrayWithCapacity:[self.deals count]];
	for (NSDictionary *deal in self.deals)
	{
		[annotations addObject:[NetworkDealAnnotation annotationForDeal:deal]];
	}
	return annotations;
}

- (void) updateMapViewMap
{
	self.annotations = [self mapAnnotations];
}

-(void) updateMapView
{
	if (self.map.annotations) [self.map removeAnnotations:self.map.annotations];
	if (self.annotations) [self.map addAnnotations:self.annotations];
}

-(void) setMap:(MKMapView *)map
{
	_map = map;
	[self updateMapView];
}

-(void) setAnnotations:(NSArray *)annotations
{
	_annotations = annotations;
	[self updateMapView];
}



#pragma mark Lifecycle
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	

	
	[self arrangeButtons];
	
	self.isScrollViewVisible = YES;
	
	[[[UIAlertView alloc] initWithTitle:@"Welcome to Deals Near Me" 
								message:@"Please press the blue button to get started" 
							   delegate:nil 
					  cancelButtonTitle:@"Close" 
					  otherButtonTitles:nil] show];
	
	self.isMapVisible = YES;
	
	[self.dealsTableView setHidden:YES];
	
	
	
	
	
	// Do any additional setup after loading the view.
	/* 
	 locationManager = [[CLLocationManager alloc] init];
	 locationManager.delegate = self;
	 [locationManager startUpdatingLocation];
	 */
	
	
	
	
	
	
	/*
	 [images addObject:[UIImage imageNamed:@"179-notepad-white.png"]];
	 [images addObject:[UIImage imageNamed:@"103-map-white.png"]];
	 [images addObject:[UIImage imageNamed:@"178-city-white.png"]];
	 [images addObject:[UIImage imageNamed:@"236-shoppingbag-white.png"]];
	 [images addObject:[UIImage imageNamed:@"299-ticket-white.png"]];
	 */
	
	/* 
	 CGFloat scrollWidth = 0 + 0.f;
	 NSInteger buttoncount= 1;
	 for (UIImage *someImage in images) 
	 {
	 CGRect frame;
	 frame.origin.x = scrollWidth;
	 frame.origin.y = 0;
	 frame.size = someImage.size;
	 
	 
	 UIButton *subview = [[UIButton alloc] initWithFrame:frame];
	 
	 [subview setImage:someImage forState:UIControlStateNormal];
	 
	 [subview setTag:buttoncount];
	 
	 [subview addTarget:self action:@selector(categoryPressed:) forControlEvents:UIControlEventTouchUpInside];
	 [self.scrollView addSubview:subview];
	 
	 scrollWidth += 88.0f;
	 buttoncount++;
	 }
	 */
	
	myTableViewController = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
	
	myTableViewController.tableView.delegate = self;
	
	myTableViewController.tableView = dealsTableView;
	

	
	
	
	self.newdeals = [NSMutableArray arrayWithCapacity:20];
	
	NewDeal *newdeal = [[NewDeal alloc] init];
	newdeal.dealname = @"Max Lagers";
	newdeal.dealdescription = @"If you would like to relax and have a nice beer with friends.";
	[self.newdeals addObject:newdeal];
	
	newdeal = [[NewDeal alloc] init];
	newdeal.dealname = @"Second Cup";
	newdeal.dealdescription = @"Our coffee is probably the best coffee you have ever had.";
	[self.newdeals addObject:newdeal];
	
	NSLog(@"The Number of newdeals is %d", [self.newdeals count]);
	
}
- (void)categoryPressed:(UIButton*)sender 
{
	NSLog(@"HI : %d", [sender tag] );
	[locationManager stopUpdatingLocation];
}
- (void)viewDidUnload
{
	[self setMap:nil];
	[self setMap:nil];
	[self setLocationLabel:nil];
	[self setAddressLabel:nil];
	[self setScrollView:nil];
	[self setDealsTableView:nil];
	[self setButtonListButton:nil];
	[self setButtonToggleScrollView:nil];
	[self setButtonToggle:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
	[locationManager stopUpdatingLocation];
	[self.locationTimer invalidate];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark Delegate Methods
-(void) locateMeOnMap:(CLLocation *)c
{
	
	
	//--1
	
	double lat = c.coordinate.latitude;
	double lng = c.coordinate.longitude;
	
	CLLocationCoordinate2D coordinate;
	NSLog(@"The value of lat is %@", [NSNumber numberWithDouble:lat]);
	NSLog(@"The value of lng is %@", [NSNumber numberWithDouble:lng]);
	
	coordinate.latitude = lat;
	coordinate.longitude = lng;
	
	//--2
	
	MyAnnotation *myAnnotation = [[MyAnnotation alloc] initWithCoordinate:coordinate];
	
	
	[self.map addAnnotation:(id)myAnnotation];
	
	//--3
	/* MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(coordinate, 1000, 1000);
	 */
	
	MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(coordinate, 750, 750);
	
	MKCoordinateRegion adjustedRegion = [self.map regionThatFits:viewRegion];
	
	[self.map setRegion:adjustedRegion animated:YES];
}

-(void) geocode:(NSString *)address
{
	//1
	self.locationLabel.text = @"Getting deals";
	CLGeocoder *gc = [[CLGeocoder alloc] init];
	//2
	[gc geocodeAddressString:address completionHandler:^(NSArray *placemarks, NSError *error) 
	 {
		 //3
		 if ([placemarks count]>0)
		 {
			 //4
			 CLPlacemark *mark = (CLPlacemark *) [placemarks objectAtIndex:0];
			 double lat = mark.location.coordinate.latitude;
			 
			 double lng = mark.location.coordinate.longitude;
			 
			 //5
			 self.locationLabel.text = [NSString stringWithFormat:@"Coordinate\n lat:%@, long:%@", 
										[NSNumber numberWithDouble:lat],
										[NSNumber numberWithDouble:lng]];
			 
			 // show on the map
			 //1
			 CLLocationCoordinate2D coordinate;
			 coordinate.latitude = lat;
			 coordinate.longitude = lng;
			 
			 //2
			 [self.map addAnnotation:(id)[[MyAnnotation alloc] initWithCoordinate:coordinate]];
			 
			 //3 
			 MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(coordinate, 1000, 1000);
			 
			 MKCoordinateRegion adjustedRegion = [self.map  regionThatFits:viewRegion];
			 
			 [self.map setRegion:adjustedRegion animated:YES];
			 
			 
		 }
	 }];
}

-(void) doMapStuff:(CLLocation *)c
{
	[self revGeocode:c];
	
	[self locateMeOnMap:c];
}

-(void) revGeocode:(CLLocation *)c
{
	// reverse geocoding coordinates to an address
	self.addressLabel.text = @"reverse geocoding...";
	CLGeocoder *gcrev = [[CLGeocoder alloc] init];
	[gcrev reverseGeocodeLocation:c completionHandler:^(NSArray *placemarks, NSError *error) {
		CLPlacemark	*revMark = [placemarks objectAtIndex:0];
		// turn placemark to address text
		NSArray *addressLines = [revMark.addressDictionary objectForKey:@"FormattedAddressLines"];
		NSString *revAddress = [addressLines componentsJoinedByString:@"\n"];
		self.addressLabel.text = [NSString stringWithFormat:@"You are at : \n%@", revAddress];
		// now turn the address to coordinates
		
		/* [self geocode: revAddress]; */
		
		
	}];
	
}

- (void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
	if (newLocation.coordinate.latitude != oldLocation.coordinate.latitude)
	{
		/* [self revGeocode: newLocation]; */
		[self doMapStuff:newLocation];
	}
}

- (IBAction)doLocateMeButton:(id)sender 
{
	/* if (self.map.annotations) [self.map removeAnnotations:self.map.annotations]; */
	
	locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = self;
	[locationManager startUpdatingLocation];
	
	self.locationTimer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(stopUpdatingLocations) userInfo:nil repeats:NO];
	
	
	
	[self getDealsFromNetwork];
}






- (IBAction)refresh:(id)sender 
{
	NSLog(@"refresh was pressed");
	
	UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	[spinner startAnimating];
	
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:spinner];
	
	
	dispatch_queue_t downloadQueue = dispatch_queue_create("networkdownloader", NULL);
	dispatch_async(downloadQueue, ^{
		NSLog(@"About to fetch deals from the network");
		/* NSArray *deals = [NetworkFetcher recentDeals]; */
		
		NSArray *deals = [NetworkFetcher recentDealsNearLevia];
		
		/* NSArray *deals = [NetworkFetcher recentDealsNearSpoke]; */
		
		dispatch_async(dispatch_get_main_queue(), ^{
			self.deals = deals;
			// spinner goes away
			self.navigationItem.rightBarButtonItem = sender;
			self.locationLabel.text = [NSString stringWithFormat:@"Deals Found : %d", [deals count]];
			
		});
	});
	dispatch_release(downloadQueue);
	
}


- (void)categorySeeAllPressed:(id)sender
{
	NSLog(@"refresh was pressed");
	
	/* 
	UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	[spinner startAnimating];
	
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:spinner];
	*/
	
	[self getDealsFromNetwork];
}

- (void) getDealsFromNetwork 
{
	dispatch_queue_t downloadQueue = dispatch_queue_create("networkdownloader", NULL);
	dispatch_async(downloadQueue, ^{
		NSLog(@"About to fetch deals from the network");
		/* NSArray *deals = [NetworkFetcher recentDeals]; */
		
		NSArray *deals = [NetworkFetcher recentDealsNearLevia];
		
		/* NSArray *deals = [NetworkFetcher recentDealsNearSpoke]; */
		
		dispatch_async(dispatch_get_main_queue(), ^{
			self.deals = deals;
			// spinner goes away
			/* self.navigationItem.rightBarButtonItem = sender; */
			self.locationLabel.text = [NSString stringWithFormat:@"Deals Found : %d", [deals count]];
			NSLog(@"getDealsFromNetwork just came back with the following %d", [self.deals count]);

			
			
		});
	});
	dispatch_release(downloadQueue);
}

- (void)categoryBarsPressed:(id)sender
{
	[[[UIAlertView alloc] initWithTitle:@"Deals Near Me" message:@"Bars Button Pressed" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil] show];
}

- (void)arrangeButtons
{
	NSMutableArray *images = [NSMutableArray new];
	[images addObject:[UIImage imageNamed:@"new_category_icon_001_seeall.png"]];
	
	[images addObject:[UIImage imageNamed:@"new_category_icon_002_bars.png"]];
	
	[images addObject:[UIImage imageNamed:@"new_category_icon_003_travel.png"]];
	
	[images addObject:[UIImage imageNamed:@"new_category_icon_004_fun.png"]];
	
	[images addObject:[UIImage imageNamed:@"new_category_icon_005_services.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_003_dining.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_004_family.png"]];	
	
	[images addObject:[UIImage imageNamed:@"category_icon_007_shopping.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_009_wellness.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_010_blank.png"]];
	
	CGFloat scrollWidth = 0 + 0.f;
	CGRect frame;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"new_category_icon_001_seeall.png"] size];	
	UIButton *button001 = [[UIButton alloc] initWithFrame:frame];
	[button001 setImage:[images objectAtIndex:0] forState:UIControlStateNormal];
	[button001 setTag:0];
	[button001 addTarget:self action:@selector(categorySeeAllPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button001];
	
	
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"new_category_icon_002_bars.png"] size];
	UIButton *button002 = [[UIButton alloc] initWithFrame:frame];
	[button002 setImage:[images objectAtIndex:1] forState:UIControlStateNormal];
	[button002 setTag:1];
	[button002 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button002];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"new_category_icon_003_travel.png"] size];
	UIButton *button008 = [[UIButton alloc] initWithFrame:frame];
	[button008 setImage:[images objectAtIndex:2] forState:UIControlStateNormal];
	[button008 setTag:2];
	[button008 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button008];
	
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"new_category_icon_004_fun.png"] size];
	UIButton *button005 = [[UIButton alloc] initWithFrame:frame];
	[button005 setImage:[images objectAtIndex:3] forState:UIControlStateNormal];
	[button005 setTag:3];
	[button005 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button005];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"new_category_icon_005_services.png"] size];
	UIButton *button006 = [[UIButton alloc] initWithFrame:frame];
	[button006 setImage:[images objectAtIndex:4] forState:UIControlStateNormal];
	[button006 setTag:4];
	[button006 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button006];
	
	
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_003_dining.png"] size];
	UIButton *button003 = [[UIButton alloc] initWithFrame:frame];
	[button003 setImage:[images objectAtIndex:5] forState:UIControlStateNormal];
	[button003 setTag:5];
	[button003 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button003];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_004_family.png"] size];
	UIButton *button004 = [[UIButton alloc] initWithFrame:frame];
	[button004 setImage:[images objectAtIndex:6] forState:UIControlStateNormal];
	[button004 setTag:6];
	[button004 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button004];
	
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_007_shopping.png"] size];
	UIButton *button007 = [[UIButton alloc] initWithFrame:frame];
	[button007 setImage:[images objectAtIndex:7] forState:UIControlStateNormal];
	[button007 setTag:7];
	[button007 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button007];
	

	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_009_wellness.png"] size];
	UIButton *button009 = [[UIButton alloc] initWithFrame:frame];
	[button009 setImage:[images objectAtIndex:8] forState:UIControlStateNormal];
	[button009 setTag:8];
	[button009 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button009];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_010_blank.png"] size];
	UIButton *button010 = [[UIButton alloc] initWithFrame:frame];
	[button010 setImage:[images objectAtIndex:9] forState:UIControlStateNormal];
	[button010 setTag:9];
	[button010 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button010];
	
	[self.scrollView setBackgroundColor:[UIColor whiteColor]]; 
	self.scrollView.pagingEnabled = NO;
	self.scrollView.contentSize = CGSizeMake(scrollWidth, 72.0f);
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	
    // Return the number of sections.
	
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	
    // Return the number of rows in the section.
    /* return [self.newdeals count]; */
	
	return [self.deals count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DealCell";
    DealCell *cell = (DealCell *)[self.dealsTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
	if ( [self.deals count] == 0)
	{
		NSLog(@"The count of number of deals is %d", [self.deals count]);
		
		NewDeal *newdeal = [self.newdeals objectAtIndex:indexPath.row];
		cell.nameLabel.text = newdeal.dealname;	
		cell.descriptionLabel.text = newdeal.dealdescription;
		
	}
	else 
	{
		NSLog(@"The count of number of deals ========= is %d", [self.deals count]);
		
		
		
		/* 
		Deal *deal = [self.deals objectAtIndex:indexPath.row];
		cell.nameLabel.text = deal.dealname;
		cell.descriptionLabel.text = deal.dealdescription;
		 */
		
		NSDictionary *onedeal = [self.deals objectAtIndex:indexPath.row];
		
		cell.nameLabel.text = [onedeal objectForKey:@"title"];
		
		
		cell.descriptionLabel.text = [[onedeal objectForKey:@"description"] objectForKey:@"_content"];
		
		
		
	}
	

	
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"it should segue %@=====================", indexPath);
	
	
	/* [self performSegueWithIdentifier:@"DealDetailSegue" sender:indexPath]; */
	

	
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"DealDetailSegue"])
	{
		NSLog(@"Wonder if the prepareForSegue is getting called %@", segue.destinationViewController);
		
		
		if ([segue.destinationViewController respondsToSelector:@selector(setMapDeal:)]) 
		{
			[segue.destinationViewController performSelector:@selector(setMapDeal:) 
												  withObject:sender];
		}
		
	}
}

- (void)stopUpdatingLocations
{
	[locationManager stopUpdatingLocation];
	
	[self.locationTimer invalidate];
}


#pragma mark IBActions
- (IBAction)buttonListPressed:(id)sender 
{
	
	
	/* self.tabBarController.selectedIndex = 1; */
	
	/* [tabBarController setSelectedViewController:(UIViewController *)[tabBarController.viewControllers objectAtIndex: 2]]; */
	
	if (self.isMapVisible)
	{
		
		self.isMapVisible = NO;
		
		[self.map setHidden:YES];
		
		[self.dealsTableView setHidden:NO];
		
		
		[self.buttonListButton setImage:[UIImage imageNamed:@"07-map-marker-white.png"]];
	}
	else 
	{
		self.isMapVisible = YES;
		
		[self.map setHidden:NO];
		
		[self.dealsTableView setHidden:YES];
		
		[self.buttonListButton setImage:[UIImage imageNamed:@"259-list-white.png"]];
	}
	
}

- (IBAction)buttonToggleScrollViewPressed:(id)sender 
{
	if (self.isScrollViewVisible == YES)
	{
	
	[self.buttonToggle setImage:[UIImage imageNamed:@"57-download-white.png"]];
		
		self.isScrollViewVisible = NO;	
	}
	else 
	{
		[self.buttonToggle setImage:[UIImage imageNamed:@"57-download-reversed-white.png"]];
		

		
		self.isScrollViewVisible = YES;
	}
}
@end














