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
#import "LocationPickerViewController.h"
#import "NewFilterPickerViewController.h"
#import "NewDealDetailViewController.h"

#define METERS_PER_MILE 1689.344

@interface MapViewController ()<MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *map;


#pragma mark for map

-(void) geocode:(NSString *) address;
-(void) locateMeOnMap:(CLLocation *) c;
- (void)categoryPressed:(UIButton*)sender;

@property (nonatomic, strong) UIButton *button001;
@property (nonatomic, strong) UIButton *button002;
@property (nonatomic, strong) UIButton *button003;
@property (nonatomic, strong) UIButton *button004;
@property (nonatomic, strong) UIButton *button004x;
@property (nonatomic, strong) UIButton *button005;
@property (nonatomic, strong) UIButton *button006;
@property (nonatomic, strong) UIButton *button007;
@property (nonatomic, strong) UIButton *button008;
@property (nonatomic, strong) UIButton *button009;
@property (nonatomic, strong) UIButton *button010;

@property (nonatomic, strong) CLGeocoder *geocoder;



@end

@implementation MapViewController
{
	NSString *city;
	

    
    
}
@synthesize segmentedControlMapListButton = _segmentedControlMapListButton;
@synthesize segmentedControlFilterButton = _segmentedControlFilterButton;




@synthesize viewFilterByView = _viewFilterByView;
@synthesize buttonToggle = _buttonToggle;
@synthesize dealsTableView = _dealsTableView;
@synthesize annotations = _annotations;
@synthesize buttonToggleScrollView = _buttonToggleScrollView;
@synthesize buttonListButton = _buttonListButton;
@synthesize scrollView = _scrollView;
@synthesize scrollDividerView = _scrollDividerView;
@synthesize map = _map;

@synthesize addressLabel = _addressLabel;
@synthesize labelLocationLabel = _labelLocationLabel;
@synthesize deals = _deals;
@synthesize newdeals = _newdeals;
@synthesize isMapVisible = _isMapVisible;
@synthesize isScrollViewVisible = _isScrollViewVisible;
@synthesize myTableViewController = _myTableViewController;
@synthesize locationTimer = _locationTimer;
@synthesize button001 = _button001;
@synthesize button002 = _button002;
@synthesize button003 = _button003;
@synthesize button004 = _button004;
@synthesize button004x = _button004x;
@synthesize button005 = _button005;
@synthesize button006 = _button006;
@synthesize button007 = _button007;
@synthesize button008 = _button008;
@synthesize button009 = _button009;
@synthesize button010 = _button010;

@synthesize geocoder = _geocoder;

@synthesize mapIndexPath = _mapIndexPath;

@synthesize theSelectedRatingFilter = _theSelectedRatingFilter;

@synthesize theSelectedDistanceFilter = _theSelectedDistanceFilter;

@synthesize theSelectedDistanceValue = _theSelectedDistanceValue;

@synthesize mycoordinate = _mycoordinate;

@synthesize newcoordinate = _newcoordinate;


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
	NSLog(@"------------mapAnnotations");
	
	NSMutableArray *annotations = [NSMutableArray arrayWithCapacity:200];
	if (![self.deals isEqual:[NSNull null]])
	{
		for (NSDictionary *deal in self.deals)
		{
			[annotations addObject:[NetworkDealAnnotation annotationForDeal:deal]];
		}
	}
	return annotations;
}

- (NSArray *) mapAnnotationsWithPins
{
	NSLog(@"------------mapAnnotationsWithPins");
	NSMutableArray *annotations = [NSMutableArray arrayWithCapacity:[self.deals count]];
	for (NSDictionary *deal in self.deals)
	{
		[annotations addObject:[NetworkDealAnnotation annotationForDeal:deal]];
	}
	return annotations;
}

- (void) updateMapViewMap
{
	NSLog(@"------------updateMapViewMap");
	self.annotations = [self mapAnnotations];
}

-(void) updateMapView
{
	NSLog(@"------------updateMapView");
	if (self.map.annotations) [self.map removeAnnotations:self.map.annotations];
	if (self.annotations) [self.map addAnnotations:self.annotations];
	
	
    
	/* [self.map setUserTrackingMode:MKUserTrackingModeFollowWithHeading animated:YES]; */
	
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

#pragma mark MapViewDelegate methods



- (MKAnnotationView *) mapView:(MKMapView *)map viewForAnnotation:(id<MKAnnotation>)annotation
{
	MKAnnotationView *pinView = nil;
    if(annotation != map.userLocation)
    {
        static NSString *defaultPinID = @"mypin";
        pinView = (MKAnnotationView *)[map dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
        
        
		if (pinView == nil)
		{
			pinView = [[MKAnnotationView alloc]
					   initWithAnnotation:annotation reuseIdentifier:defaultPinID];
		}
		
		NSString *iconFilename = @"";
		NSString *pinViewFilename = @"";
		
		NetworkDealAnnotation *networkDealAnnotation = (NetworkDealAnnotation *)annotation;
		
		
		
		if ([[networkDealAnnotation.deal objectForKey:@"sector"] isEqualToString:@"Bars & Clubs"])
		{
			iconFilename = @"map_pin_bars_30px.png";
			pinViewFilename = @"map_pin_bars_30px.png";
		}
		
		else if ([[networkDealAnnotation.deal objectForKey:@"sector"] isEqualToString:@"Travel"])
		{
			iconFilename = @"map_pin_travel_30px.png";
			pinViewFilename = @"map_pin_travel_30px.png";
		}
		
		else if ([[networkDealAnnotation.deal objectForKey:@"sector"] isEqualToString:@"Fun"])
		{
			iconFilename = @"map_pin_fun_30px.png";
			pinViewFilename = @"map_pin_fun_30px.png";
		}
		else if ([[networkDealAnnotation.deal objectForKey:@"sector"] isEqualToString:@"Services"])
		{
			iconFilename = @"map_pin_services_30px.png";
			pinViewFilename = @"map_pin_services_30px.png";
		}
		else if ([[networkDealAnnotation.deal objectForKey:@"sector"] isEqualToString:@"Dining"])
		{
			iconFilename = @"map_pin_dining_30px.png";
			pinViewFilename = @"map_pin_dining_30px.png";
		}
		else if ([[networkDealAnnotation.deal objectForKey:@"sector"] isEqualToString:@"Family"])
		{
			iconFilename = @"map_pin_family_30px.png";
			pinViewFilename = @"map_pin_family_30px.png";
		}
		else if ([[networkDealAnnotation.deal objectForKey:@"sector"] isEqualToString:@"Shopping"])
		{
			iconFilename = @"map_pin_shopping_30px.png";
			pinViewFilename = @"map_pin_shopping_30px.png";
		}
		else if ([[networkDealAnnotation.deal objectForKey:@"sector"] isEqualToString:@"Wellness"])
		{
			iconFilename = @"map_pin_wellness_30px.png";
			pinViewFilename = @"map_pin_wellness_30px.png";
		}
		
		else
		{
			iconFilename = @"map_pin_fun_30px.png";
			pinViewFilename = @"map_pin_fun_30px.png";
		}
		
		iconFilename = @"default_thumb_23x23.png";
		
		UIImageView *leftIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:iconFilename]];
		
		UIImage *pinImage = [UIImage imageNamed:pinViewFilename];
		
		pinView.leftCalloutAccessoryView = leftIconView;
        
		[pinView setImage:pinImage];
		
		pinView.canShowCallout = YES;
		
		UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
		
		
		NSInteger annotationValue = [self.annotations indexOfObject:annotation];
		
		rightButton.tag = annotationValue;
		
		pinView.rightCalloutAccessoryView = rightButton;
        
        
		
		
		
    }
    else
	{
        [map.userLocation setTitle:@"I am here"];
        map.userLocation.subtitle = @"Hello";
    }
    return pinView;
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
	
	
	
	self.mapIndexPath = control.tag;
	
	NSLog(@"---------------calloutAccessoryControlTapped %@", view.description);
	
	
	
	
	[self performSegueWithIdentifier:@"FromMapDealDetailSegue" sender:self];
	
	// NSInteger selectedIndex = view.tag;
	
	
	
	
	
	
	
}


- (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)aView
{
	/*
	 UIImage *image = [UIImage imageNamed:@"default_thumb.png"];
	 
	 
	 [(UIImageView *)aView.leftCalloutAccessoryView setImage:image];
	 */
	
	NSLog(@"---------------didSelectAnnotationView %@", aView.description);
	
	//Example
	if ([aView.description isEqualToString: @"Golden Gate"])
	{
		//Load golden gate information in a new viewcontroller
	}
	
	
}

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated
{
	// NSLog(@"The mapview was dragged / moved");
	/*
	 NSLog(@"-------center latitude %f", mapView.centerCoordinate.latitude);
	 NSLog(@"-------center longitude %f", mapView.centerCoordinate.longitude);
	 */
	/* [self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", mapView.centerCoordinate.latitude]
	 AndLongitude:[NSString stringWithFormat:@"%f", mapView.centerCoordinate.longitude]
	 WithCategory:@"0"];
	 */
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




- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	if (buttonIndex == 0)
	{
		
		self.newcoordinate = self.mycoordinate;
		
		[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
								 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
								 WithCategory:@"0"
								 WithDistance:self.theSelectedDistanceValue
		 
		 ];
	}
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	
	
	
	[self arrangeButtons];
	
	[self.button001 setSelected:YES];
	
	// [self.button001 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_001_seeall.png"] forState:UIControlStateSelected];
	
	[self.button001 setImage:[UIImage imageNamed:@"seeall_hover.jpg"] forState:UIControlStateSelected];
	
	self.map.delegate = self;
	
	self.isScrollViewVisible = YES;
	
	[[[UIAlertView alloc] initWithTitle:@"Welcome to Deals Near Me"
								message:@"Tap on See All to get started"
							   delegate:self
					  cancelButtonTitle:@"OK"
					  otherButtonTitles:nil] show];
	
	self.isMapVisible = YES;
	
	[self.dealsTableView setHidden:YES];
	
	[self.segmentedControlFilterButton removeAllSegments];
	
	[self.segmentedControlFilterButton insertSegmentWithTitle:@"Filter" atIndex:0 animated:NO];
	
	[self.segmentedControlMapListButton removeAllSegments];
	
	[self.segmentedControlMapListButton insertSegmentWithTitle:@"List" atIndex:0 animated:NO];
	
	
	
	/* do what seeall button does */
	
	self.map.showsUserLocation = YES;
    
    [self.map setUserTrackingMode:MKUserTrackingModeNone];
	
	
	
	
	
	NSLog(@"---------the number of deals is----%d", [self.deals count]);
	
	/* [self gotoHardCodedLocation]; */
	
	
	
	
	/* do what seeall button does */
	
	
	// Do any additional setup after loading the view.
	
	locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = self;
	[locationManager startUpdatingLocation];
	
	
	
	self.theSelectedDistanceValue = 15;
	
	
	
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
	
	[self startTimer];
	
	
	
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
	
	[self setAddressLabel:nil];
	[self setScrollView:nil];
	[self setDealsTableView:nil];
	[self setButtonListButton:nil];
	[self setButtonToggleScrollView:nil];
	[self setButtonToggle:nil];
	[self setScrollDividerView:nil];
	self.button001 = nil;
	self.button002 = nil;
	self.button003 = nil;
	self.button004 = nil;
    self.button004x = nil;
	self.button005 = nil;
	self.button006 = nil;
	self.button007 = nil;
	self.button008 = nil;
	self.button009 = nil;
	self.button010 = nil;
	
	
    [self setViewFilterByView:nil];
	[self setSegmentedControlMapListButton:nil];
	[self setSegmentedControlFilterButton:nil];
	[self setSegmentedControlFilterButton:nil];
	[self setSegmentedControlMapListButton:nil];
	[self setLabelLocationLabel:nil];
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
	
	NSLog(@"Start of locateMeOnMap %@", c);
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
	
	MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(coordinate, 20 * METERS_PER_MILE, 20 * METERS_PER_MILE);
	
	MKCoordinateRegion adjustedRegion = [self.map regionThatFits:viewRegion];
	
	[self.map setRegion:adjustedRegion animated:YES];
    
    NSLog(@"End of locateMeOnMap");
}

-(void) geocode:(NSString *)address
{
	//1
	/* self.locationLabel.text = @"Getting deals"; */
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
			 /* self.locationLabel.text = [NSString stringWithFormat:@"Coordinate\n lat:%@, long:%@",
			  [NSNumber numberWithDouble:lat],
			  [NSNumber numberWithDouble:lng]];
			  */
			 // show on the map
			 //1
			 CLLocationCoordinate2D coordinate;
			 coordinate.latitude = lat;
			 coordinate.longitude = lng;
			 
			 //2
			 [self.map addAnnotation:(id)[[MyAnnotation alloc] initWithCoordinate:coordinate]];
			 
			 //3
			 MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(coordinate, 20 * METERS_PER_MILE, 20 * METERS_PER_MILE);
			 
			 MKCoordinateRegion adjustedRegion = [self.map  regionThatFits:viewRegion];
			 
			 [self.map setRegion:adjustedRegion animated:YES];
			 
			 
		 }
	 }];
}

-(void) doMapStuff:(CLLocation *)c
{
	
	
    
	/* [self locateMeOnMap:c]; */
    
    /* 	[self revGeocode:c]; */
}

-(void) revGeocode:(CLLocation *)c
{
	// reverse geocoding coordinates to an address
	/* self.addressLabel.text = @"reverse geocoding..."; */
	
	CLGeocoder *gcrev = [[CLGeocoder alloc] init];
	[gcrev reverseGeocodeLocation:c completionHandler:^(NSArray *placemarks, NSError *error) {
		CLPlacemark	*revMark = [placemarks objectAtIndex:0];
		// turn placemark to address text
		NSArray *addressLines = [revMark.addressDictionary objectForKey:@"FormattedAddressLines"];
		NSString *revAddress = [addressLines componentsJoinedByString:@"\n"];
		/* self.addressLabel.text = [NSString stringWithFormat:@"You are at : \n%@", revAddress]; */
		
		self.labelLocationLabel.text = [NSString stringWithFormat:@"%@", revAddress];
		NSLog(@"---The address is--------------%@", revAddress);
		
		// now turn the address to coordinates
		
		/* [self geocode: revAddress]; */
		
		
	}];
	
}

- (void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
	if (newLocation.coordinate.latitude != oldLocation.coordinate.latitude)
	{
		[self revGeocode: newLocation];
		[self doMapStuff:newLocation];
		
		self.mycoordinate = newLocation.coordinate;
		
		self.newcoordinate = newLocation.coordinate;
		
		NSLog(@"-----------------------didUpdateToLocation fired---------------------");
		MKUserLocation *userLocation = self.map.userLocation;
		MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(
																	   userLocation.location.coordinate, 20 * METERS_PER_MILE, 20 * METERS_PER_MILE);
		[self.map setRegion:region animated:YES];
	}
}

- (IBAction)doLocateMeButton:(id)sender
{
	
	locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = self;
	[locationManager startUpdatingLocation];
	
    self.locationTimer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(stopUpdatingLocations) userInfo:nil repeats:NO];
    
    self.map.showsUserLocation = YES;
    
    [self.map setUserTrackingMode:MKUserTrackingModeFollow];
	
	
	
}


#pragma mark LocationPickerSegue






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
			/* self.locationLabel.text = [NSString stringWithFormat:@"Deals Found : %d", [deals count]]; */
			
		});
	});
	dispatch_release(downloadQueue);
	
}




- (void) getDealsFromNetworkWithLatitude:(NSString *)latitude
							AndLongitude:(NSString *)longitude
							WithCategory:(NSString *)categoryID
							WithDistance:(NSUInteger)distance
{
	UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
	
	[spinner setColor:[UIColor grayColor]];
	
	spinner.center = CGPointMake(160, 240);
	
	spinner.hidesWhenStopped = YES;
	
	[self.view addSubview:spinner];
	
	[spinner startAnimating];
	
	dispatch_queue_t downloadQueue = dispatch_queue_create("networkdownloader", NULL);
	dispatch_async(downloadQueue, ^{
		NSLog(@"About to fetch deals from the network");
		
		NSArray *deals = [NetworkFetcher recentDealsNearLatitude:(NSString *)latitude
													AndLongitude:(NSString *)longitude
													WithCategory:(NSString *)categoryID
													WithDistance:(NSUInteger)distance
						  ];
		
		  
			
			
		
		dispatch_async(dispatch_get_main_queue(), ^{
			self.deals = deals;
			if (![self.deals isEqual:[NSNull null]])
			{
				NSLog(@"getDealsFromNetwork just came back with the following %d", [self.deals count]);
				
				
								NSLog(@"getDealsFromNetwork the distance parameter is %d", self.theSelectedDistanceValue);
				
				
				
				NSLog(@"-------------the number of deals is %d", [self.deals count]);
				
				for (NSDictionary *deal in self.deals)
				{
					// NSLog(@"-----------------------%@", [deal objectForKey:NETWORK_DEAL_BUSINESSNAME] );
					
					// NSLog(@"-----------------------%@", [deal objectForKey:NETWORK_DEAL_ADDRESS]);
					
					
					
					
					
				}
				NSLog(@"-------------------------------------------about to archive deals");
				NSData *dealsdata = [NSKeyedArchiver archivedDataWithRootObject:self.deals];
				[[NSUserDefaults standardUserDefaults] setObject:dealsdata forKey:@"dealsarchive"];
				NSLog(@"-------------------------------------------about to archive deals");
				[spinner stopAnimating];
				
				if ([self.deals count] == 0)
				{
					[[[UIAlertView alloc] initWithTitle:@"No Deals Found"
												message:@"Please check your network connection"
											   delegate:nil
									  cancelButtonTitle:@"OK"
									  otherButtonTitles:nil] show];
					
				}
				else
				{
					NSString *numdealsfound = [NSString stringWithFormat:@"%d deals found", [self.deals count]];
					
					[[[UIAlertView alloc] initWithTitle:numdealsfound
												message:@"Tap on the deal to explore"
											   delegate:nil
									  cancelButtonTitle:@"OK"
									  otherButtonTitles:nil] show];
					
					self.labelLocationLabel.text = numdealsfound;
				}
				
			}
			else
			{
				[spinner stopAnimating];
				[[[UIAlertView alloc] initWithTitle:@"No Deals Found"
											message:@"Please change your location"
										   delegate:nil
								  cancelButtonTitle:@"OK"
								  otherButtonTitles:nil] show];
			}
			
		});
	});
	dispatch_release(downloadQueue);
	
}




- (void) gotoHardCodedLocation
{
    CLLocationCoordinate2D hardcodedLocation;
    
    
    // for 60610
    hardcodedLocation.latitude = 41.902837;
    hardcodedLocation.longitude = -87.635913;
    
    // for Levia
    // hardcodedLocation.latitude = 43.700934;
    // hardcodedLocation.longitude= -79.426240;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(hardcodedLocation, 40 * METERS_PER_MILE, 40  * METERS_PER_MILE);
    // 3
    MKCoordinateRegion adjustedRegion = [self.map regionThatFits:viewRegion];
    // 4
    [self.map setRegion:adjustedRegion animated:YES];
    
    
}

- (void)categorySeeAllPressed:(id)sender
{
	
	
	NSLog(@"categorySeeAllPressed was pressed");
	
	/*
	 UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	 [spinner startAnimating];
	 
	 self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:spinner];
	 */
    
    self.map.showsUserLocation = YES;
    
    [self.map setUserTrackingMode:MKUserTrackingModeNone];
	
	[self.button001 setSelected:YES];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:NO];
	[self.button009 setSelected:NO];
	
	
	
	/* [self getDealsFromNetwork]; */
	
    /* [self gotoHardCodedLocation]; */
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"0"
							 WithDistance:self.theSelectedDistanceValue
	 
	 ];
	
	
	
	
	
}

- (void)categoryBarsPressed:(id)sender
{
	
	
	[self.button001 setSelected:NO];
	[self.button002 setSelected:YES];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:NO];
	[self.button009 setSelected:NO];
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"11"
							 WithDistance:self.theSelectedDistanceValue
	 
	 
	 ];
	
	
	
	
}

- (void) categoryTravelPressed:(id) sender
{
	[self.button001 setSelected:NO];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:YES];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:NO];
	[self.button009 setSelected:NO];
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"9"
							 WithDistance:self.theSelectedDistanceValue
	 
	 ];
	
}

- (void) categoryFunPressed:(id) sender
{
	[self.button001 setSelected:NO];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:YES];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:NO];
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"6"
							 WithDistance:self.theSelectedDistanceValue
	 
	 ];
	
	
}

- (void) categoryServicesPressed:(id) sender
{
	[self.button001 setSelected:NO];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:YES];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:NO];
	[self.button009 setSelected:NO];
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"13"
							 WithDistance:self.theSelectedDistanceValue
	 
	 ];
	
	
}

- (void) categoryDiningPressed:(id) sender
{
	[self.button001 setSelected:NO];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:YES];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:NO];
	[self.button009 setSelected:NO];
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"12"
							 WithDistance:self.theSelectedDistanceValue
	 
	 ];
	
	
}
- (void) categoryFamilyPressed:(id) sender
{
	[self.button001 setSelected:NO];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:YES];
	[self.button008 setSelected:NO];
	[self.button009 setSelected:NO];
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"10"
							 WithDistance:self.theSelectedDistanceValue
	 
	 ];
	
	
}
- (void) categoryShoppingPressed:(id) sender
{
	[self.button001 setSelected:NO];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:YES];
	[self.button009 setSelected:NO];
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"5"
							 WithDistance:self.theSelectedDistanceValue
	 
	 ];
	
	
}

- (void) categoryWellnessPressed:(id) sender
{
	[self.button001 setSelected:NO];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:NO];
	[self.button009 setSelected:YES];
	
	[self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", self.newcoordinate.latitude]
							 AndLongitude:[NSString stringWithFormat:@"%f", self.newcoordinate.longitude]
							 WithCategory:@"8"
							 WithDistance:self.theSelectedDistanceValue
	 
	 ];
	
	
}

- (void)arrangeButtons
{
	NSMutableArray *images = [NSMutableArray new];
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_001_seeall.png"]];
	
	[images addObject:[UIImage imageNamed:@"seeall.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_002_bars.png"]];
	
	[images addObject:[UIImage imageNamed:@"barsandclubs.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_003_travel.png"]];
	
	[images addObject:[UIImage imageNamed:@"travel.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_004_fun.png"]];
	
	[images addObject:[UIImage imageNamed:@"fun.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_005_services.png"]];
	
	[images addObject:[UIImage imageNamed:@"services.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_006_dining.png"]];
	
	[images addObject:[UIImage imageNamed:@"dining.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_007_family.png"]];
	
	[images addObject:[UIImage imageNamed:@"family.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_008_shopping.png"]];
	
	[images addObject:[UIImage imageNamed:@"shopping.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"guides_new_category_icon_009_wellness.png"]];
	
	[images addObject:[UIImage imageNamed:@"wellness.jpg"]];
	
	// [images addObject:[UIImage imageNamed:@"category_icon_010_blank.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_010_blank.png"]];
	
	CGFloat scrollWidth = 0 + 0.f;
	CGRect frame;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"seeall.jpg"] size];
	self.button001 = [[UIButton alloc] initWithFrame:frame];
	[self.button001 setImage:[images objectAtIndex:0] forState:UIControlStateNormal];
	[self.button001 setImage:[UIImage imageNamed:@"seeall_hover.jpg"] forState:UIControlStateSelected];
	[self.button001 setTag:0];
	[self.button001 addTarget:self action:@selector(categorySeeAllPressed:) forControlEvents:UIControlEventTouchUpInside];
	
	[self.scrollView addSubview:self.button001];
	
	
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"barsandclubs.jpg"] size];
	self.button002 = [[UIButton alloc] initWithFrame:frame];
	[self.button002 setImage:[images objectAtIndex:1] forState:UIControlStateNormal];
	[self.button002 setImage:[UIImage imageNamed:@"barsandclubs_hover.jpg"] forState:UIControlStateSelected];
	[self.button002 setTag:1];
	[self.button002 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button002];
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"travel.jpg"] size];
	self.button003 = [[UIButton alloc] initWithFrame:frame];
	[self.button003 setImage:[images objectAtIndex:2] forState:UIControlStateNormal];
	[self.button003 setImage:[UIImage imageNamed:@"travel_hover.jpg"] forState:UIControlStateSelected];
	[self.button003 setTag:2];
	[self.button003 addTarget:self action:@selector(categoryTravelPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button003];
	
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"fun.jpg"] size];
	self.button004 = [[UIButton alloc] initWithFrame:frame];
	[self.button004 setImage:[images objectAtIndex:3] forState:UIControlStateNormal];
	[self.button004 setImage:[UIImage imageNamed:@"fun_hover.jpg"] forState:UIControlStateSelected];
	[self.button004 setTag:3];
	[self.button004 addTarget:self action:@selector(categoryFunPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button004];
    
    /*
	 scrollWidth += 72.0f;
	 frame.origin.x = scrollWidth;
	 frame.origin.y = 0;
	 frame.size = [[UIImage imageNamed:@"right_arrow_left_arrow_category.png"] size];
	 self.button004x = [[UIButton alloc] initWithFrame:frame];
	 [self.button004x setImage:[images objectAtIndex:4] forState:UIControlStateNormal];
	 [self.button004x setImage:[UIImage imageNamed:@"right_arrow_left_arrow_category.png"] forState:UIControlStateSelected];
	 [self.button004x setTag:4];
	 [self.button004x addTarget:self action:@selector(categoryFunPressed:) forControlEvents:UIControlEventTouchUpInside];
	 [self.scrollView addSubview:self.button004x];
     */
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"services.jpg"] size];
	self.button005 = [[UIButton alloc] initWithFrame:frame];
	[self.button005 setImage:[images objectAtIndex:4] forState:UIControlStateNormal];
	[self.button005 setImage:[UIImage imageNamed:@"services_hover.jpg"] forState:UIControlStateSelected];
	[self.button005 setTag:4];
	[self.button005 addTarget:self action:@selector(categoryServicesPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button005];
	
	
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"dining.jpg"] size];
	self.button006 = [[UIButton alloc] initWithFrame:frame];
	[self.button006 setImage:[images objectAtIndex:5] forState:UIControlStateNormal];
	[self.button006 setImage:[UIImage imageNamed:@"dining_hover.jpg"] forState:UIControlStateSelected];
	[self.button006 setTag:5];
	[self.button006 addTarget:self action:@selector(categoryDiningPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button006];
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"family.jpg"] size];
	self.button007 = [[UIButton alloc] initWithFrame:frame];
	[self.button007 setImage:[images objectAtIndex:6] forState:UIControlStateNormal];
	[self.button007 setImage:[UIImage imageNamed:@"family_hover.jpg"] forState:UIControlStateSelected];
	[self.button007 setTag:6];
	[self.button007 addTarget:self action:@selector(categoryFamilyPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button007];
	
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"shopping.jpg"] size];
	self.button008 = [[UIButton alloc] initWithFrame:frame];
	[self.button008 setImage:[images objectAtIndex:7] forState:UIControlStateNormal];
	[self.button008 setImage:[UIImage imageNamed:@"shopping_hover.jpg"] forState:UIControlStateSelected];
	[self.button008 setTag:7];
	[self.button008 addTarget:self action:@selector(categoryShoppingPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button008];
	
	
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"wellness.jpg"] size];
	self.button009 = [[UIButton alloc] initWithFrame:frame];
	[self.button009 setImage:[images objectAtIndex:8] forState:UIControlStateNormal];
	[self.button009 setImage:[UIImage imageNamed:@"wellness_hover.jpg"] forState:UIControlStateSelected];
	[self.button009 setTag:8];
	[self.button009 addTarget:self action:@selector(categoryWellnessPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button009];
	
	scrollWidth += 65.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"blank.jpg"] size];
	self.button010 = [[UIButton alloc] initWithFrame:frame];
	[self.button010 setImage:[images objectAtIndex:9] forState:UIControlStateNormal];
	[self.button010 setTag:9];
	/* [self.button010 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside]; */
	[self.scrollView addSubview:self.button010];
	
	[self.scrollView setBackgroundColor:[UIColor whiteColor]];
	self.scrollView.pagingEnabled = NO;
	self.scrollView.contentSize = CGSizeMake(scrollWidth, 65.0f);
}
#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	
    // Return the number of sections.
	
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	
    // Return the number of rows in the section.
    /* return [self.newdeals count]; */
	if (![self.deals isEqual:[NSNull null]])
	{
		return [self.deals count];
	}
	else
	{
		return 0;
	}
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"DealCell";
    DealCell *cell = (DealCell *)[self.dealsTableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	return cell.frame.size.height;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DealCell";
    DealCell *cell = (DealCell *)[self.dealsTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
	if ( [self.deals count] == 0)
	{
		
		
		NewDeal *newdeal = [self.newdeals objectAtIndex:indexPath.row];
		cell.nameLabel.text = newdeal.dealname;
		cell.descriptionLabel.text = newdeal.dealdescription;
		
	}
	else
	{
		
		
		
		
		/*
		 Deal *deal = [self.deals objectAtIndex:indexPath.row];
		 cell.nameLabel.text = deal.dealname;
		 cell.descriptionLabel.text = deal.dealdescription;
		 */
		
		NSDictionary *onedeal = [self.deals objectAtIndex:indexPath.row];
		
		cell.nameLabel.text = [onedeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
		
		
		/* cell.descriptionLabel.text = [[onedeal objectForKey:@"description"] objectForKey:@"_content"]; */
		
		cell.descriptionLabel.text = [onedeal objectForKey:NETWORK_DEAL_DESCRIPTION];
		
		
		
	}
	
	
	
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"it should segue %@=====================", indexPath);
	/*
	 @try
	 {
	 [self performSegueWithIdentifier:@"DealDetailSegue" sender:self];
	 }
	 @catch (NSException *exception)
	 {
	 NSLog(@"%@", exception);
	 }
	 @finally {
	 NSLog(@"finally");
	 }
	 */
	
	
	
	
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"DealDetailSegue"])
	{
		NSLog(@"Wonder if the prepareForSegue is getting called %@", segue.destinationViewController);
        
        UITableViewCell *cell = (UITableViewCell *) sender;
        
        NSIndexPath *indexPath = [self.dealsTableView indexPathForCell:cell];
        
        
        
        NewDealDetailViewController *dest = [segue destinationViewController];
        
		dest.fromFavoritesView = NO;
		
		
		dest.dealnum = [[NSNumber alloc] initWithInteger:indexPath.row];
        
        
		
        NSLog(@"---------------DealDetailSegue %@", dest.dealnum );
		
		
        
		/*
		 if ([segue.destinationViewController respondsToSelector:@selector(setMapDeal:)])
		 {
		 [segue.destinationViewController performSelector:@selector(setMapDeal:)
		 withObject:sender];
		 }
		 */
		NSLog(@"---------------end of prepareForSegue " );
		
	}
	else if ([segue.identifier isEqualToString:@"FromMapDealDetailSegue"])
	{
		NewDealDetailViewController *dest = [segue destinationViewController];
		
		
		dest.dealnum = [[NSNumber alloc] initWithInteger:self.mapIndexPath];
		
		
		NSLog(@"-------------the number being sent in prepareForSegue is %d", self.mapIndexPath);
		
		
		
		
	}
	
    else if ([segue.identifier isEqualToString:@"LocationPickerSegue"])
    {
        UINavigationController *navigationController = segue.destinationViewController;
        
        
        LocationPickerViewController *locationPickerViewController = [[navigationController viewControllers] objectAtIndex:0];
        
        locationPickerViewController.delegate = self;
    }
    else if ([segue.identifier isEqualToString:@"FilterPickerSegue"])
    {
		
		UINavigationController *navigationController = segue.destinationViewController;
        
        
        NewFilterPickerViewController *newfilterPickerViewController = [[navigationController viewControllers] objectAtIndex:0];
		
		NSLog(@"---------------NewFilterPickerSegue");
        
        newfilterPickerViewController.theSelectedRatingFilter = self.theSelectedRatingFilter;
		
		newfilterPickerViewController.theSelectedDistanceFilter = self.theSelectedDistanceFilter;
        
        newfilterPickerViewController.delegate = self;
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
	
	
	[self performSegueWithIdentifier:@"LocationPickerSegue" sender:self];
	
    
    NSLog(@"Button List Pressed");
}


- (IBAction)buttonToggleScrollViewPressed:(id)sender
{
	if (self.isScrollViewVisible == YES)
	{
		
		/* [self.buttonToggle setImage:[UIImage imageNamed:@"57-download-white.png"]]; */
		
		self.isScrollViewVisible = NO;
		
		
		[UIView beginAnimations:@"animateViewOff" context:NULL];
		
		[self.scrollView setFrame:CGRectOffset([self.scrollView frame], 0, -((2 *self.scrollView.frame.size.height) + 44))];
		
		[self.scrollDividerView setFrame:CGRectOffset([self.scrollDividerView frame], 0, -(self.scrollView.frame.size.height))];
		
		
		CGRect navframe = [[self.navigationController navigationBar] frame];
		
		CGRect l_RectFrame = CGRectMake(0,  navframe.size.height + 44, self.view.frame.size.width, self.view.frame.size.height);
		
		[self.dealsTableView setFrame:l_RectFrame];
		
		[self.map setFrame:l_RectFrame];
		
		[UIView commitAnimations];
		
		
		
		
		
		
		
	}
	else
	{
		/* [self.buttonToggle setImage:[UIImage imageNamed:@"57-download-reversed-white.png"]]; */
		
		
		
		self.isScrollViewVisible = YES;
		
		[UIView beginAnimations:@"animateImageOn" context:NULL];
		
		[self.scrollView setFrame:CGRectOffset([self.scrollView	frame], 0, ( 2 * self.scrollView.frame.size.height + 44))];
		
		CGRect navframe = [[self.navigationController navigationBar] frame];
		
		
		
		CGRect lDividerFrame = CGRectMake(0, navframe.size.height + self.scrollView.frame.size.height + 44,
										  self.scrollDividerView.frame.size.width, self.scrollDividerView.frame.size.height);
		
		[self.scrollDividerView setFrame:lDividerFrame];
		
		
		[self.dealsTableView setFrame:CGRectOffset([self.dealsTableView frame], 0, (1 * self.scrollView.frame.size.height))];
		
		[self.map setFrame:CGRectOffset([self.map frame], 0, (1 * self.scrollView.frame.size.height))];
		
		[UIView commitAnimations];
		
		NSLog(@"----------about to start timer");
		
		[self startTimer];
		
		
	}
}

#pragma mark LocationPickerViewControllerDelegate methods

-
(void) locationPickerViewControllerDidCancel:(LocationPickerViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:^{
        //do map stuff here
    }];
    
}



- (void) locationPickerViewController:(LocationPickerViewController *)controller
                        didSelectCity:(NSString *) theCity
{
	city = theCity;
	
	/* self.addressLabel.text = city; */
	NSLog(@"The value of city is %@", theCity);
    
	self.labelLocationLabel.text = [NSString stringWithFormat:@"%@", theCity];
	
    if ([theCity isEqualToString:@"Use Current Location"])
    {
        /* below is what used to happen when you clicked the blue locateMe Button */
        locationManager = [[CLLocationManager alloc] init];
        locationManager.delegate = self;
        [locationManager startUpdatingLocation];
        
        self.locationTimer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(stopUpdatingLocations) userInfo:nil repeats:NO];
        
        self.map.showsUserLocation = YES;
        
        /* [self.map setUserTrackingMode:MKUserTrackingModeFollow]; */
        
        /* above is what used to happen when you clicked the blue locateMe Button */
    }
	else if ([theCity isEqualToString:@"I Don't See My City"])
	{
		[self performSegueWithIdentifier:@"FromMapToRequestSegue" sender:self];
	}
    
	[self dismissViewControllerAnimated:YES completion:^{
        //do map stuff here
		__block CLLocationCoordinate2D zoomLocation;
		// 0
		
		if (!self.geocoder) {
			self.geocoder = [[CLGeocoder alloc] init];
		}
		
		[self.geocoder geocodeAddressString:theCity	completionHandler:^(NSArray *placemarks, NSError *error)
		 {
			 if ([placemarks count] > 0) {
				 CLPlacemark *placemark = [placemarks objectAtIndex:0];
				 CLLocation *location = placemark.location;
				 
			
					 zoomLocation = location.coordinate;
				 
				 self.newcoordinate = location.coordinate;
					 
					 NSLog(@"-------city center latitude %f", self.newcoordinate.latitude);
					 NSLog(@"-------city center longitude %f", self.newcoordinate.longitude);
					 
					 [self getDealsFromNetworkWithLatitude:[NSString stringWithFormat:@"%f", location.coordinate.latitude]
											  AndLongitude:[NSString stringWithFormat:@"%f", location.coordinate.longitude]
											  WithCategory:@"0"
											  WithDistance:self.theSelectedDistanceValue
					  
					  ];
				 
				 
				 // 2
				 MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 20 * METERS_PER_MILE, 20 * METERS_PER_MILE);
				 // 3
				 MKCoordinateRegion adjustedRegion = [self.map regionThatFits:viewRegion];
				 // 4
				 [self.map setRegion:adjustedRegion animated:YES];
				 
				 
				 
				 /*
				  self.addressLabel.text = [NSString stringWithFormat:@"%f, %f", zoomLocation.latitude, zoomLocation.longitude];
				  */
				 
				 if ([placemark.areasOfInterest count] > 0)
				 {
					 NSString *areaOfInterest = [placemark.areasOfInterest objectAtIndex:0];
					 NSLog(@"Areas of Interest: %@", areaOfInterest);
				 } else {
					 NSLog(@"No Area of Interest Was Found");
				 }
				 
				 
				 
			 }
		 }];
		
		// 1
		/*
		 CLLocationCoordinate2D zoomLocation;
		 zoomLocation.latitude = 39.281516;
		 zoomLocation.longitude= -76.580806;
		 */
		
    }];
	
}
/*
 - (IBAction)segmentedControlMapListIndexChanged:(id)sender
 {
 switch (self.segmentedControlMapList.selectedSegmentIndex)
 {
 case 0:
 NSLog(@"Map seleected");
 
 self.isMapVisible = YES;
 
 [self.map setHidden:NO];
 
 [self.dealsTableView setHidden:YES];
 
 
 
 break;
 
 case 1:
 NSLog(@"List selected");
 self.isMapVisible = NO;
 
 [self.map setHidden:YES];
 
 [self.dealsTableView setHidden:NO];
 
 
 break;
 
 default:
 break;
 
 }
 }
 */





#pragma mark NewFilterPickerViewControllerDelegate methods

-
(void) filterPickerViewControllerDidCancel:(NewFilterPickerViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:^{
        //do map stuff here
    }];
    
}

- (void) filterPickerViewController:(NewFilterPickerViewController *)controller
			  didSelectRatingFilter:(NSUInteger) theRatingFilter
{
    NSLog(@"-------------%d", theRatingFilter);
    
    self.theSelectedRatingFilter = theRatingFilter;
    
	
    switch (self.theSelectedRatingFilter)
	{
        case 0:
            
            /* [self.buttonFilterButton setTitle:@" Filter : Popularity" forState:UIControlStateNormal]; */
			
			
			[self.segmentedControlFilterButton setTitle:@"1 Star" forSegmentAtIndex:0];
			
            break;
		case 1 :
            /* [self.buttonFilterButton setTitle:@" Filter : Distance" forState:UIControlStateNormal]; */
			
			[self.segmentedControlFilterButton setTitle:@"2 Stars" forSegmentAtIndex:0];
			break;
			
		case 2 :
            /* [self.buttonFilterButton setTitle:@" Filter : Distance" forState:UIControlStateNormal]; */
			
			[self.segmentedControlFilterButton setTitle:@"3 Stars" forSegmentAtIndex:0];
			break;
			
			
		case 3 :
            /* [self.buttonFilterButton setTitle:@" Filter : Distance" forState:UIControlStateNormal]; */
			
			[self.segmentedControlFilterButton setTitle:@"4 Stars" forSegmentAtIndex:0];
			
			break;
			
        default:
			
			[self.segmentedControlFilterButton setTitle:@"1 Star" forSegmentAtIndex:0];
			
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:^{
        //do map stuff here
    }];
	
}

- (void) filterPickerViewController:(NewFilterPickerViewController *)controller
			didSelectDistanceFilter:(NSUInteger) theDistanceFilter
{
    NSLog(@"-------------%d", theDistanceFilter);
    
    self.theSelectedDistanceFilter = theDistanceFilter;
    
	
	
    switch (self.theSelectedDistanceFilter)
	{
        case 0:
            
            /* [self.buttonFilterButton setTitle:@" Filter : Popularity" forState:UIControlStateNormal]; */
			
			[self.segmentedControlFilterButton setTitle:@"0.5 miles" forSegmentAtIndex:0];
			
			self.theSelectedDistanceValue = 0.5;
			
			
            break;
		case 1 :
            /* [self.buttonFilterButton setTitle:@" Filter : Distance" forState:UIControlStateNormal]; */
			
			[self.segmentedControlFilterButton setTitle:@"1 mile" forSegmentAtIndex:0];
			
			self.theSelectedDistanceValue = 1;
			
			break;
			
		case 2 :
            /* [self.buttonFilterButton setTitle:@" Filter : Distance" forState:UIControlStateNormal]; */
			
			[self.segmentedControlFilterButton setTitle:@"5 miles" forSegmentAtIndex:0];
			
			self.theSelectedDistanceValue = 5;
			
			break;
			
			
		case 3 :
            /* [self.buttonFilterButton setTitle:@" Filter : Distance" forState:UIControlStateNormal]; */
			
			[self.segmentedControlFilterButton setTitle:@"10 miles" forSegmentAtIndex:0];
			
			self.theSelectedDistanceValue = 10;
			
			break;
		case 4 :
            /* [self.buttonFilterButton setTitle:@" Filter : Distance" forState:UIControlStateNormal]; */
			
			[self.segmentedControlFilterButton setTitle:@"20 miles" forSegmentAtIndex:0];
			
			self.theSelectedDistanceValue = 20;
			
			break;
			
        default:
			
			[self.segmentedControlFilterButton setTitle:@"Filter" forSegmentAtIndex:0];
			
			self.theSelectedDistanceValue = 15;
			
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:^{
        //do map stuff here
    }];
	
}

#pragma mark - segmentedControls Pressed





- (IBAction)segmentedControlMapListButtonPressed:(id)sender
{
	if (self.isMapVisible)
	{
		NSLog(@"List selected");
		self.isMapVisible = NO;
		
		[self.map setHidden:YES];
		
		[self.dealsTableView setHidden:NO];
		
		/* [self.buttonMapListButton setTitle:@" Map "]; */
		
		[self.segmentedControlMapListButton setTitle:@" Map " forSegmentAtIndex:0];
		
		
	}
	else
	{
		NSLog(@"Map seleected");
		
		self.isMapVisible = YES;
		
		[self.map setHidden:NO];
		
		[self.dealsTableView setHidden:YES];
		
		/* [self.buttonMapListButton setTitle:@" List "]; */
		
		[self.segmentedControlMapListButton setTitle:@" List " forSegmentAtIndex:0];
		
	}
}


- (IBAction)segmentedControlFilterButtonPressed:(id)sender
{
	[self performSegueWithIdentifier:@"FilterPickerSegue" sender:self];
}

#pragma mark Timer

- (IBAction)startTimer
{
	NSLog(@"-------timer started");
	
	[self.buttonToggleScrollView setEnabled:NO];
	
    fiveSecondsTimer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(collapseCategoryCarousel) userInfo:nil repeats:YES];
	
}

- (IBAction)stopTimer
{
    [fiveSecondsTimer invalidate];
	
	[self.buttonToggleScrollView setEnabled:YES];
	
	[locationManager stopUpdatingLocation];
	
	
	
	NSLog(@"-------timer started");
}
- (IBAction)startShortTimer
{
	NSLog(@"-------timer started");
	
	[self.buttonToggleScrollView setEnabled:NO];
	
    twoSecondsTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(stopShortTimer) userInfo:nil repeats:YES];
	
}

- (IBAction)stopShortTimer
{
    [twoSecondsTimer invalidate];
	
	[self.buttonToggleScrollView setEnabled:YES];
	
	[locationManager stopUpdatingLocation];
	
	NSLog(@"-------timer started");
}



- (void) collapseCategoryCarousel
{
	self.isScrollViewVisible = NO;
	
	[UIView beginAnimations:@"animateViewOff" context:NULL];
	
	[self.scrollView setFrame:CGRectOffset([self.scrollView frame], 0, -((2 *self.scrollView.frame.size.height) + 44))];
	
	[self.scrollDividerView setFrame:CGRectOffset([self.scrollDividerView frame], 0, -(self.scrollView.frame.size.height))];
	
	
	CGRect navframe = [[self.navigationController navigationBar] frame];
	
	CGRect l_RectFrame = CGRectMake(0,  navframe.size.height + 44, self.view.frame.size.width, self.view.frame.size.height);
	
	[self.dealsTableView setFrame:l_RectFrame];
	
	[self.map setFrame:l_RectFrame];
	
	[UIView commitAnimations];
	
	[self stopTimer];
}
@end














