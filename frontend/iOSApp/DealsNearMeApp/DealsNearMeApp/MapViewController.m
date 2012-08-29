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


@end

@implementation MapViewController

@synthesize buttonToggle = _buttonToggle;
@synthesize dealsTableView = _dealsTableView;
@synthesize annotations = _annotations;
@synthesize buttonToggleScrollView = _buttonToggleScrollView;
@synthesize buttonListButton = _buttonListButton;
@synthesize scrollView = _scrollView;
@synthesize scrollDividerView = _scrollDividerView;
@synthesize map = _map;
@synthesize locationLabel = _locationLabel;
@synthesize addressLabel = _addressLabel;
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

- (NSArray *) mapAnnotationsWithPins
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
	/* self.annotations = [self mapAnnotations]; */
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

#pragma mark MapViewDelegate methods

- (MKAnnotationView *) mapView:(MKMapView *)map viewForAnnotation:(id<MKAnnotation>)annotation
{
	MKAnnotationView *pinView = nil; 
    if(annotation != map.userLocation) 
    {
        static NSString *defaultPinID = @"mypin";
        pinView = (MKAnnotationView *)[map dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
        if ( pinView == nil ) 
            pinView = [[MKAnnotationView alloc]
					   initWithAnnotation:annotation reuseIdentifier:defaultPinID];
		
        //pinView.pinColor = MKPinAnnotationColorGreen; 
        pinView.canShowCallout = YES;
        //pinView.animatesDrop = YES;
        pinView.image = [UIImage imageNamed:@"map_pin_self.png"];   
    } 
    else {
        [map.userLocation setTitle:@"I am here"];
    }
    return pinView;
}

- (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)aView
{
	UIImage *image = [UIImage imageNamed:@"default_thumb.png"];
	
	
	[(UIImageView *)aView.leftCalloutAccessoryView setImage:image];
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
	
	[self.button001 setSelected:YES];
	
	[self.button001 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_001_seeall.png"] forState:UIControlStateSelected];
	
	self.map.delegate = self;
	
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
	
	MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(coordinate, 750, 750);
	
	MKCoordinateRegion adjustedRegion = [self.map regionThatFits:viewRegion];
	
	[self.map setRegion:adjustedRegion animated:YES];
    
    NSLog(@"End of locateMeOnMap");
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

	
    
	/* [self locateMeOnMap:c]; */
    
    /* 	[self revGeocode:c]; */
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
		[self revGeocode: newLocation];
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

- (IBAction)buttonLocationPicker:(id)sender
{
        [self performSegueWithIdentifier:@"LocationPickerSegue" sender:self];
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
			self.locationLabel.text = [NSString stringWithFormat:@"Deals Found : %d", [deals count]];
			
		});
	});
	dispatch_release(downloadQueue);
	
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

- (void)categorySeeAllPressed:(id)sender
{
	NSLog(@"refresh was pressed");
	
	/* 
	 UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	 [spinner startAnimating];
	 
	 self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:spinner];
	 */
	
	[self.button001 setSelected:YES];
	[self.button002 setSelected:NO];
	[self.button003 setSelected:NO];
	[self.button004 setSelected:NO];
	[self.button005 setSelected:NO];
	[self.button006 setSelected:NO];
	[self.button007 setSelected:NO];
	[self.button008 setSelected:NO];
	[self.button009 setSelected:NO];
	
	
	[self getDealsFromNetwork];
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
}

- (void)arrangeButtons
{
	NSMutableArray *images = [NSMutableArray new];
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_001_seeall.png"]];
	
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_002_bars.png"]];
	
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_003_travel.png"]];
	
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_004_fun.png"]];
    
    [images addObject:[UIImage imageNamed:@"right_arrow_category_evensmaller.png"]];
	
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_005_services.png"]];
	
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_006_dining.png"]];
	
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_007_family.png"]];	
	
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_008_shopping.png"]];
	
	[images addObject:[UIImage imageNamed:@"guides_new_category_icon_009_wellness.png"]];
	
	[images addObject:[UIImage imageNamed:@"category_icon_010_blank.png"]];
	
	CGFloat scrollWidth = 0 + 0.f;
	CGRect frame;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_001_seeall.png"] size];	
	self.button001 = [[UIButton alloc] initWithFrame:frame];
	[self.button001 setImage:[images objectAtIndex:0] forState:UIControlStateNormal];
	[self.button001 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_001_seeall.png"] forState:UIControlStateSelected];
	[self.button001 setTag:0];
	[self.button001 addTarget:self action:@selector(categorySeeAllPressed:) forControlEvents:UIControlEventTouchUpInside];
	
	[self.scrollView addSubview:self.button001];
	
	
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_002_bars.png"] size];
	self.button002 = [[UIButton alloc] initWithFrame:frame];
	[self.button002 setImage:[images objectAtIndex:1] forState:UIControlStateNormal];
	[self.button002 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_002_bars.png"] forState:UIControlStateSelected];
	[self.button002 setTag:1];
	[self.button002 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button002];
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_003_travel.png"] size];
	self.button003 = [[UIButton alloc] initWithFrame:frame];
	[self.button003 setImage:[images objectAtIndex:2] forState:UIControlStateNormal];
	[self.button003 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_003_travel.png"] forState:UIControlStateSelected];
	[self.button003 setTag:2];
	[self.button003 addTarget:self action:@selector(categoryTravelPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button003];
	
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_004_fun.png"] size];
	self.button004 = [[UIButton alloc] initWithFrame:frame];
	[self.button004 setImage:[images objectAtIndex:3] forState:UIControlStateNormal];
	[self.button004 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_004_fun.png"] forState:UIControlStateSelected];
	[self.button004 setTag:3];
	[self.button004 addTarget:self action:@selector(categoryFunPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button004];
    
    scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"right_arrow_category_evensmaller.png"] size];
	self.button004x = [[UIButton alloc] initWithFrame:frame];
	[self.button004x setImage:[images objectAtIndex:4] forState:UIControlStateNormal];
	[self.button004x setImage:[UIImage imageNamed:@"right_arrow_category_evensmaller.png"] forState:UIControlStateSelected];
	[self.button004x setTag:4];
	[self.button004x addTarget:self action:@selector(categoryFunPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button004x];
    
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_005_services.png"] size];
	self.button005 = [[UIButton alloc] initWithFrame:frame];
	[self.button005 setImage:[images objectAtIndex:5] forState:UIControlStateNormal];
	[self.button005 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_005_services.png"] forState:UIControlStateSelected];
	[self.button005 setTag:5];
	[self.button005 addTarget:self action:@selector(categoryServicesPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button005];
	
	
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_006_dining.png"] size];
	self.button006 = [[UIButton alloc] initWithFrame:frame];
	[self.button006 setImage:[images objectAtIndex:6] forState:UIControlStateNormal];
	[self.button006 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_006_dining.png"] forState:UIControlStateSelected];
	[self.button006 setTag:6];
	[self.button006 addTarget:self action:@selector(categoryDiningPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button006];
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_007_family.png"] size];
	self.button007 = [[UIButton alloc] initWithFrame:frame];
	[self.button007 setImage:[images objectAtIndex:7] forState:UIControlStateNormal];
	[self.button007 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_007_family.png"] forState:UIControlStateSelected];
	[self.button007 setTag:7];
	[self.button007 addTarget:self action:@selector(categoryFamilyPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button007];
	
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_008_shopping.png"] size];
	self.button008 = [[UIButton alloc] initWithFrame:frame];
	[self.button008 setImage:[images objectAtIndex:8] forState:UIControlStateNormal];
	[self.button008 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_008_shopping.png"] forState:UIControlStateSelected];
	[self.button008 setTag:8];
	[self.button008 addTarget:self action:@selector(categoryShoppingPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button008];
	
	
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"guides_new_category_icon_009_wellness.png"] size];
	self.button009 = [[UIButton alloc] initWithFrame:frame];
	[self.button009 setImage:[images objectAtIndex:9] forState:UIControlStateNormal];
	[self.button009 setImage:[UIImage imageNamed:@"selected_guides_new_category_icon_009_wellness.png"] forState:UIControlStateSelected];
	[self.button009 setTag:9];
	[self.button009 addTarget:self action:@selector(categoryWellnessPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:self.button009];
	
	scrollWidth += 72.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_010_blank.png"] size];
	self.button010 = [[UIButton alloc] initWithFrame:frame];
	[self.button010 setImage:[images objectAtIndex:10] forState:UIControlStateNormal];
	[self.button010 setTag:10];
	/* [self.button010 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside]; */
	[self.scrollView addSubview:self.button010];
	
	[self.scrollView setBackgroundColor:[UIColor whiteColor]]; 
	self.scrollView.pagingEnabled = YES;
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
        
        UITableViewCell *cell = (UITableViewCell *) sender;
        
        NSIndexPath *indexPath = [self.dealsTableView indexPathForCell:cell];
        
        
        
        DealDetailViewController *dest = [segue destinationViewController];
        
        dest.dealnum = [[NSNumber alloc] initWithInteger:indexPath.row];
        
        
		
        NSLog(@"---------------DealDetailSegue " );
        
		
		if ([segue.destinationViewController respondsToSelector:@selector(setMapDeal:)]) 
		{
			[segue.destinationViewController performSelector:@selector(setMapDeal:) 
												  withObject:sender];
		}
   
		
	}
    else if ([segue.identifier isEqualToString:@"LocationPickerSegue"])
    {
        UINavigationController *navigationController = segue.destinationViewController;
        
        
        LocationPickerViewController *locationPickerViewController = [[navigationController viewControllers] objectAtIndex:0];
        
        locationPickerViewController.delegate = self;
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
		
		[UIView beginAnimations:@"animateViewOff" context:NULL];
		
		[self.scrollView setFrame:CGRectOffset([self.scrollView frame], 0, -(2 *self.scrollView.frame.size.height))]; 
		
		[self.scrollDividerView setFrame:CGRectOffset([self.scrollDividerView frame], 0, -(self.scrollView.frame.size.height))];
		
		
		CGRect navframe = [[self.navigationController navigationBar] frame];
		
		CGRect l_RectFrame = CGRectMake(0,  navframe.size.height, self.view.frame.size.width, self.view.frame.size.height);
		
		[self.dealsTableView setFrame:l_RectFrame];
		
		[self.map setFrame:l_RectFrame];
		
		[UIView commitAnimations];
		
		
	}
	else 
	{
		[self.buttonToggle setImage:[UIImage imageNamed:@"57-download-reversed-white.png"]];
		
		
		
		self.isScrollViewVisible = YES;
		
		[UIView beginAnimations:@"animateImageOn" context:NULL];
		
		[self.scrollView setFrame:CGRectOffset([self.scrollView	frame], 0, ( 2 * self.scrollView.frame.size.height))];
		
		CGRect navframe = [[self.navigationController navigationBar] frame];
		
		
		
		CGRect lDividerFrame = CGRectMake(0, navframe.size.height + self.scrollView.frame.size.height, 
										  self.scrollDividerView.frame.size.width, self.scrollDividerView.frame.size.height);
		
		[self.scrollDividerView setFrame:lDividerFrame];
		
		
		[self.dealsTableView setFrame:CGRectOffset([self.dealsTableView frame], 0, (1 * self.scrollView.frame.size.height))];
		
		[self.map setFrame:CGRectOffset([self.map frame], 0, (1 * self.scrollView.frame.size.height))];
		
		[UIView commitAnimations];
		
		
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
@end














