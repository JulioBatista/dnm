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

@interface MapViewController ()
@property (strong, nonatomic) IBOutlet MKMapView *map;


#pragma mark for map

-(void) geocode:(NSString *) address;
-(void) locateMeOnMap:(CLLocation *) c;
- (void)categoryPressed:(UIButton*)sender;
@end

@implementation MapViewController
@synthesize annotations = _annotations;
@synthesize scrollView = _scrollView;
@synthesize map = _map;
@synthesize locationLabel = _locationLabel;
@synthesize addressLabel = _addressLabel;
@synthesize deals = _deals;

#pragma mark setters

-(void) setDeals:(NSArray *)deals
{
	if (_deals != deals)
	{
		_deals = deals;
		[self updateMapViewMap];
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
	// Do any additional setup after loading the view.
	/* 
	 locationManager = [[CLLocationManager alloc] init];
	 locationManager.delegate = self;
	 [locationManager startUpdatingLocation];
	 */
	
	
	
	NSMutableArray *images = [NSMutableArray new];
	[images addObject:[UIImage imageNamed:@"category_icon_001_seeall.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_002_bars.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_003_dining.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_004_family.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_005_fun.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_006_services.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_007_shopping.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_008_travel.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_009_wellness.png"]];
	
	
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
	CGFloat scrollWidth = 0 + 0.f;
	CGRect frame;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_001_seeall.png"] size];	
	UIButton *button001 = [[UIButton alloc] initWithFrame:frame];
	[button001 setImage:[images objectAtIndex:0] forState:UIControlStateNormal];
	[button001 setTag:1];
	[button001 addTarget:self action:@selector(categorySeeAllPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button001];
	
	
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_001_seeall.png"] size];
	UIButton *button002 = [[UIButton alloc] initWithFrame:frame];
	[button002 setImage:[images objectAtIndex:1] forState:UIControlStateNormal];
	[button002 setTag:2];
	[button002 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button002];
	
	
	
	
	
	[self.scrollView setBackgroundColor:[UIColor whiteColor]]; 
	self.scrollView.pagingEnabled = NO;
	self.scrollView.contentSize = CGSizeMake(scrollWidth, 72.0f);
	
	
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
	[locationManager stopUpdatingLocation];
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
	
	[[[UIAlertView alloc] initWithTitle:@"Deals Near Me" message:@"Updating Location" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil] show];
}

- (IBAction)buttonListPressed:(id)sender 
{
	[[[UIAlertView alloc] initWithTitle:@"Deals Near Me" message:@"List Button" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil] show];
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
	[[[UIAlertView alloc] initWithTitle:@"Deals Near Me" message:@"Category button" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil] show];
}

- (void)categoryBarsPressed:(id)sender
{
	[[[UIAlertView alloc] initWithTitle:@"Deals Near Me" message:@"Bars Button Pressed" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil] show];
}

@end














