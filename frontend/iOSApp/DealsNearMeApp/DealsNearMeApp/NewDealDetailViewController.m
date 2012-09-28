//
//  NewDealDetailViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NewDealDetailViewController.h"
#import "MyAnnotation.h"
#import "FavoritesViewController.h"
#import "Twitter/Twitter.h"
#import "NetworkFetcher.h"
#import "FacebookHelper.h"
#import "NetworkDealAnnotation.h"

#define letOSHandleLogin FALSE

@interface NewDealDetailViewController ()

@end

@implementation NewDealDetailViewController
@synthesize buttonPrevButton = _buttonPrevButton;
@synthesize buttonFavoritesButton = _buttonFavoritesButton;

@synthesize labelDealDescription;
@synthesize dealnum = _dealnum;
@synthesize dealIndex = _dealIndex;
@synthesize currentDeal = _currentDeal;
@synthesize currentDealNum = _currentDealNum;
@synthesize archivedDeals = _archivedDeals;
@synthesize buttonCategory;
@synthesize labelBusinessName = _labelBusinessName;
@synthesize labelAddress;
@synthesize labelAddressLine2 = _labelAddressLine2;
@synthesize labelBusinessPhoneLabel = _labelBusinessPhoneLabel;
@synthesize favoriteDeals = _favoriteDeals;
@synthesize actionSheet = _actionSheet;
@synthesize buttonNextButton = _buttonNextButton;
@synthesize canTweet = _canTweet;
@synthesize fromFavoritesView = _fromFavoritesView;
@synthesize mapViewDetailMapView = _mapViewDetailMapView;

@synthesize geocoder = _geocoder;


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
    
    // favorites
    
	
    
    
    NSData *favoriteDealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"favoritedealsarchive"];
	
	self.favoriteDeals = [NSKeyedUnarchiver unarchiveObjectWithData:favoriteDealsData];
    
    if ([self.favoriteDeals count] == 0)
    {
		self.favoriteDeals = [[NSMutableArray alloc] init];
    }
    
    
	NSLog(@"Echo the dealnum--------------------------------------------....%@", self.dealnum);
	NSData *dealsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"dealsarchive"];
	
	self.archivedDeals = [NSKeyedUnarchiver unarchiveObjectWithData:dealsData];
    
	if ([self.archivedDeals count] > 0)
	{
		NSLog(@"Archived deals were found");
	}
	
	self.currentDealNum = [self.dealnum integerValue];
	
	if (self.dealnum == nil)
	{
		self.dealnum = 0;
		NSLog(@"dealnum was nil");
	}
	
	NSLog(@"currentDealNum %d", self.currentDealNum);
	
	
	NSLog(@"self.dealIndex : %d", self.dealIndex);
	
	
	NSDictionary *onedeal = [self.archivedDeals objectAtIndex:[self.dealnum integerValue]];
	
	
	
	self.labelDealDescription.text = [onedeal objectForKey:NETWORK_DEAL_DESCRIPTION];
    
    
    /*
     self.labelDealDescription.text = [[onedeal objectForKey:NETWORK_DEAL_DEALDESCRIPTION] objectForKey:NETWORK_DEAL_CONTENT];
     */
	
	[self.buttonCategory setTitle:[onedeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
	
	
	self.labelBusinessName.text = [onedeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
	
	self.labelAddress.text = [onedeal objectForKey:NETWORK_DEAL_ADDRESS];
	
	self.labelAddressLine2.text = [onedeal objectForKey:NETWORK_DEAL_ID];
	
	self.labelBusinessPhoneLabel.text = [onedeal objectForKey:NETWORK_DEAL_BUSINESS_PHONE];
	
	
	/* NSLog(@"-----%@", onedeal); */
    [FacebookHelper sharedInstance].publishingdelegate = self;
	
	
	
	[self ifFromFavoritesDisableButtons];
	
	self.mapViewDetailMapView.delegate = self;
	
	[self populateMapViewDetailMapView:self.currentDealNum];
	
	
}



- (void)viewDidUnload
{
	
	[self setLabelDealDescription:nil];
	[self setButtonCategory:nil];
	[self setLabelAddress:nil];
	[self setLabelBusinessName:nil];
	[self setLabelAddressLine2:nil];
	[self setLabelBusinessPhoneLabel:nil];
	[self setButtonFavoritesButton:nil];
	[self setButtonNextButton:nil];
	[self setButtonPrevButton:nil];
	[self setMapViewDetailMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark FromFavoritesScreen

- (void) ifFromFavoritesDisableButtons
{
	/* set the favorites button to pressed state if you are coming from Favorites screen */
	
	if (self.fromFavoritesView)
	{
		[self.buttonFavoritesButton setImage:[UIImage imageNamed:@"hearticon_press.png"] forState:UIControlStateNormal];
		
		[self.buttonFavoritesButton setEnabled:NO];
		
		[self.buttonPrevButton setEnabled:NO];
		
		[self.buttonNextButton setEnabled:NO];
		
	}
	else
	{
		[self.buttonFavoritesButton setEnabled:YES];
	}
}

#define METERS_PER_MILE 1689.344

#pragma mark populateMapViewDetailMapView

- (void) populateMapViewDetailMapView
{
	
	NSLog(@"---------------populateMapViewDetailMapView");
	
	NSDictionary *onedeal = [self.archivedDeals objectAtIndex:[self.dealnum integerValue]];
	
	[self geocode:[onedeal objectForKey:NETWORK_DEAL_ADDRESS]];
	
}
- (void) populateMapViewDetailMapView:(NSUInteger)currentDealNumber
{
		NSLog(@"---------------populateMapViewDetailMapView");
	
	NSLog(@"-----%d", currentDealNumber);
	
	NSDictionary *onedeal = [self.archivedDeals objectAtIndex:currentDealNumber];
	
	[self geocode:[onedeal objectForKey:NETWORK_DEAL_ADDRESS]];
	
	self.currentDealNum = currentDealNumber;
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
			 [self.mapViewDetailMapView addAnnotation:(id)[[MyAnnotation alloc] initWithCoordinate:coordinate]];
			 
			 //3
			 MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(coordinate, 0.1 * METERS_PER_MILE, 0.05 * METERS_PER_MILE);
			 
			 MKCoordinateRegion adjustedRegion = [self.mapViewDetailMapView regionThatFits:viewRegion];
			 
			 [self.mapViewDetailMapView setRegion:adjustedRegion animated:YES];
			 
			 
		 }
	 }];
}
#pragma mark MapViewDelegate methods


- (void)mapView:(MKMapView *)mapView didChangeUserTrackingMode:(MKUserTrackingMode)mode animated:(BOOL)animated
{
	NSLog(@"------------this is a required MKMapViewDelegate method");
}
- (MKAnnotationView *) mapView:(MKMapView *)map viewForAnnotation:(id<MKAnnotation>)annotation
{
	NSLog(@"-----------is this being fired");
	
	static NSString *defaultPinID = @"mypin";
	
	MKAnnotationView *annotationView = (MKAnnotationView *)[map dequeueReusableAnnotationViewWithIdentifier:defaultPinID];// get a dequeued view for the annotation like a tableview
	
	if (annotationView == nil)
    {
        annotationView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:defaultPinID];
		
	}
	
    annotationView.annotation = annotation;
	
	NSString *iconFilename = @"";
	NSString *pinViewFilename = @"";
	
	
	
	NSDictionary *onedeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
	
	
	if ([[onedeal objectForKey:@"sector"] isEqualToString:@"Bars & Clubs"])
	{
		iconFilename = @"map_pin_bars_30px.png";
		pinViewFilename = @"map_pin_bars_30px.png";
	}
	
	else if ([[onedeal objectForKey:@"sector"] isEqualToString:@"Travel"])
	{
		iconFilename = @"map_pin_travel_30px.png";
		pinViewFilename = @"map_pin_travel_30px.png";
	}
	
	else if ([[onedeal objectForKey:@"sector"] isEqualToString:@"Fun"])
	{
		iconFilename = @"map_pin_fun_30px.png";
		pinViewFilename = @"map_pin_fun_30px.png";
	}
	else if ([[onedeal objectForKey:@"sector"] isEqualToString:@"Services"])
	{
		iconFilename = @"map_pin_services_30px.png";
		pinViewFilename = @"map_pin_services_30px.png";
	}
	else if ([[onedeal objectForKey:@"sector"] isEqualToString:@"Dining"])
	{
		iconFilename = @"map_pin_dining_30px.png";
		pinViewFilename = @"map_pin_dining_30px.png";
	}
	else if ([[onedeal objectForKey:@"sector"] isEqualToString:@"Family"])
	{
		iconFilename = @"map_pin_family_30px.png";
		pinViewFilename = @"map_pin_family_30px.png";
	}
	else if ([[onedeal objectForKey:@"sector"] isEqualToString:@"Shopping"])
	{
		iconFilename = @"map_pin_shopping_30px.png";
		pinViewFilename = @"map_pin_shopping_30px.png";
	}
	else if ([[onedeal objectForKey:@"sector"] isEqualToString:@"Wellness"])
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
	
	
	
	
	
	annotationView.canShowCallout = NO;
	
    [annotationView setImage:[UIImage imageNamed:pinViewFilename]];
	
	return annotationView;
	
}

#pragma mark ButtonPresses

- (IBAction)buttonBackTapped:(id)sender
{
	[self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)buttonNext:(id)sender
{
	NSLog(@"buttonNext Pressed %d", self.currentDealNum);
	
	
	
	if (self.currentDealNum + 1 < [self.archivedDeals count])
	{
		
		self.currentDealNum++;
		
		NSLog(@"Current Deal Num: %d", self.currentDealNum);
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		self.labelBusinessName.text = [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
		
		self.labelDealDescription.text = [self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION];
		
		[self.buttonCategory setTitle:[self.currentDeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
		
		self.labelAddress.text = [self.currentDeal objectForKey:NETWORK_DEAL_ADDRESS];
		
		self.labelBusinessPhoneLabel.text = [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESS_PHONE];
	}
	[self populateMapViewDetailMapView:self.currentDealNum];
}

- (IBAction)buttonPrev:(id)sender
{
	NSLog(@"buttonPrev Pressed %d", self.currentDealNum);
	
	if (self.currentDealNum > 0)
	{
		self.currentDealNum--;
		
		NSLog(@"Current Deal Num: %d", self.currentDealNum);
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		self.labelBusinessName.text = [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESSNAME];
		
		self.labelDealDescription.text = [self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION];
		
		[self.buttonCategory setTitle:[self.currentDeal objectForKey:NETWORK_DEAL_SECTOR] forState:UIControlStateNormal];
		
		self.labelAddress.text = [self.currentDeal objectForKey:NETWORK_DEAL_ADDRESS];
		
		self.labelBusinessPhoneLabel.text = [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESS_PHONE];
		
	}
	[self populateMapViewDetailMapView:self.currentDealNum];
	
}

- (IBAction)buttonFavoritesPressed:(id)sender
{
	
	
	[self.buttonFavoritesButton setImage:[UIImage imageNamed:@"hearticon_press.png"] forState:UIControlStateSelected];
	
	[self.buttonFavoritesButton setImage:[UIImage imageNamed:@"hearticon_press.png"] forState:UIControlStateNormal];
	
	[self.buttonFavoritesButton setEnabled:NO];
	
	
	NSLog(@"How many deals in Favorites view Controller %d", [self.favoriteDeals count]);
	
	self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
	
	NSDictionary *theDeal = self.currentDeal;
	
	NSLog(@"What is the value of the current deal : %@", self.currentDeal);
	
	
	[self.favoriteDeals addObject:theDeal];
	
	NSLog(@"How many deals in Favorites view Controller %d", [self.favoriteDeals count]);
	
	// archive before unload
	
	NSData *favoriteDealsDataStorage = [NSKeyedArchiver archivedDataWithRootObject:self.favoriteDeals];
	
	[[NSUserDefaults standardUserDefaults] setObject:favoriteDealsDataStorage forKey:@"favoritedealsarchive"];
	
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Added"
														message:[self.currentDeal objectForKey:NETWORK_DEAL_TITLE]
													   delegate:nil
											  cancelButtonTitle:@"OK"
											  otherButtonTitles:nil];
	
	[alertView show];
	
	
	
}


- (IBAction)buttonPhoneButtonTapped:(id)sender
{
	self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
	
	NSString *myPhoneString =  [self.currentDeal objectForKey:NETWORK_DEAL_BUSINESS_PHONE];
	
	myPhoneString = [@"tel:" stringByAppendingString:myPhoneString];
	
	
	
	
	NSURL *urlString = [NSURL URLWithString:myPhoneString];
	
	
	NSLog(@"-------business phone---%@", urlString);
	
	[[UIApplication sharedApplication] openURL:urlString];
	
}

- (IBAction)buttonShareButtonPressed:(id)sender
{
	if (self.actionSheet)
	{
		// do nothing
	}
	else
	{
		UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Share Deals" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Twitter", @"Facebook", @"Email", nil];
		
		[actionSheet showFromBarButtonItem:sender animated:YES];
		
	}
}

// UIAlertView helper for post buttons
- (void)showAlert:(NSString *)message
		   result:(NSString *)result
{
	
	NSString *alertMsg;
	NSString *alertTitle;
	
	
	alertMsg = [NSString stringWithFormat:@"Successfully posted '%@'.\nPost ID: %@",
				message, result];
	alertTitle = @"Success";
	
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle
														message:alertMsg
													   delegate:nil
											  cancelButtonTitle:@"OK"
											  otherButtonTitles:nil];
	[alertView show];
}

// UIAlertView helper for post buttons
- (void)showAlert:(NSString *)message
	   withResult:(NSString *)result
{
	
	NSString *alertMsg;
	NSString *alertTitle;
	
	
	alertMsg = [NSString stringWithFormat:@"Message : %@'.\nResult : %@",
				message, result];
	alertTitle = @"Success";
	
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle
														message:alertMsg
													   delegate:nil
											  cancelButtonTitle:@"OK"
											  otherButtonTitles:nil];
	[alertView show];
}

- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
	NSString *choice = [actionSheet buttonTitleAtIndex:buttonIndex];
	
	if (buttonIndex == [actionSheet destructiveButtonIndex])
	{
		NSLog(@"Destroy");
		
	}
	else if ([choice isEqualToString:@"Twitter"])
	{
		NSLog(@"Twitter");
		
		if ([TWTweetComposeViewController canSendTweet])
		{
			self.canTweet = YES;
		}
		
		if (letOSHandleLogin)
		{
			NSLog(@"error label hidden");
		}
		else
		{
			NSLog(@"_________________");
		}
		
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		NSLog(@"--------------deal info : %@", [self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]);
		
		// Create the tweet sheet
		TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
		
		// Customize the tweet sheet here
		// Add a tweet message
		
		[tweetSheet setInitialText:[self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]];
		
		// Add an image
		
		[tweetSheet addImage:[UIImage imageNamed:@"default_thumb.png"]];
		
		// Add a link
		
		[tweetSheet addURL:[NSURL URLWithString:@"http://leviait.com"]];
		
		// Set a blocking handler for the tweet sheet
		
		tweetSheet.completionHandler = ^(TWTweetComposeViewControllerResult result)
		{
			
			
			
			
			[self dismissModalViewControllerAnimated:YES];
			
			[self showAlert:@"Posted to Twitter" withResult:@"Success"];
			
		};
		
		// Show the tweet sheet
		
		[self presentModalViewController:tweetSheet animated:YES];
		
		
		
	}
	else if ([choice isEqualToString:@"Facebook"])
	{
		NSLog(@"Facebook");
		
		/*
		 [[FacebookHelper sharedInstance] setIsForPostingScore:YES];
		 [[FacebookHelper sharedInstance] postToWallWithDialogNewHighscore:99];
		 */
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		NSLog(@"--------------deal info : %@", [self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]);
		
		[[FacebookHelper sharedInstance] setIsForPostingScore:YES];
		[[FacebookHelper sharedInstance] postToWallWithDialogFeedMessage:[self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]];
	}
	
	else if ([choice isEqualToString:@"Email"])
	{
		NSLog(@"Email");
		
		// allocatind new message composer window
		MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
		
		// setting a delegate method to "self"
		mc.mailComposeDelegate = self;
		
		// pre-populating the message subject
		[mc setSubject:@"Have I got a deal for you"];
		
		
		NSString *messageString = @"";
		
		self.currentDeal = [self.archivedDeals objectAtIndex:self.currentDealNum];
		
		messageString = [messageString stringByAppendingString:@"<p>It\'s your lucky day! Someone who cares, just sent you this deal via <a href='www.DealsNear.me:'>www.DealsNear.me</a> "];
		
		// messageString = [messageString stringByAppendingString:self.textFieldBusinessName.text];
		
		messageString = [messageString stringByAppendingString:@"</p><p> "];
		
		messageString = [messageString stringByAppendingString:[self.currentDeal objectForKey:NETWORK_DEAL_DESCRIPTION]];
		
		messageString = [messageString stringByAppendingString:@"</p>To see more, visit: <a href='"];
		
		
		messageString = [messageString stringByAppendingString:[self.currentDeal objectForKey:NETWORK_DEAL_BUSINESSNAME]];

		messageString = [messageString stringByAppendingString:@"'>"];


		messageString = [messageString stringByAppendingString:[self.currentDeal objectForKey:NETWORK_SHARE_URL]];
		
		messageString = [messageString stringByAppendingString:@"</a>"];
						 
		

		
		messageString = [messageString stringByAppendingString:@"<p>"];
		
		
		messageString = [messageString stringByAppendingString:@"</p><p>To start finding deals, download our free app in the app store: <a href='itms://itunes.com/apps/DealsNearMe'>http://itunes.com/apps/DealsNearMe</a></p><p>Thanks,<p>The DealsNear.me Team</p><p><a href='www.Facebook.com/DealsNearMe'>www.Facebook.com/DealsNearMe</a></p>"];
		
		// messageString = [messageString stringByAppendingString:self.textFieldTwitterHandle.text];
		
		messageString = [messageString stringByAppendingString:@"</p>"];
		
		
		
		// adding content of the message as a plain text
		// [mc setMessageBody:@"Send me a message is you like this tutorial :)" isHTML:NO];
		
		// adding content of the message as an HTML
		
		
		
		[mc setMessageBody:messageString isHTML:YES];
		
		// adding recipients
		[mc setToRecipients:[NSArray arrayWithObjects:@"DealsNear.Me <levibergovoy@gmail.com>", nil]];
		
		// adding recipients for a send copy to (arrayWithObject or arrayWithObjects)
		// [mc setCcRecipients:[NSArray arrayWithObject:@"meir@leviait.com"]];
		
		// adding hidden recipients
		// [mc setBccRecipients:[NSArray arrayWithObject:@"fivemillivolts@gmail.com"]];
		
		// adding image attachment
		// getting path for the image we have in the tutorial project
		// NSString *path = [[NSBundle mainBundle] pathForResource:@"Extra_Xcode_100x100" ofType:@"png"];
		
		// loading content of the image into NSData
		// NSData *imageData = [NSData dataWithContentsOfFile:path];
		
		// adding the attachment to he message
		// [mc addAttachmentData:imageData mimeType:@"image/png" fileName:@"Collection"];
		
		// setting different than the default transition for the modal view controller
		[mc setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
		
		/*
		 Modal view controllers transitions:
		 
		 UIModalTransitionStyleCoverVertical => pops up from the bottom, default transition
		 UIModalTransitionStyleCrossDissolve => fade on the screen
		 UIModalTransitionStyleFlipHorizontal => page flip
		 */
		
		// displaying our modal view controller on the screen (of course animated has to be set on YES if you want to see any transition)
		[self presentModalViewController:mc animated:YES];
		
		
	}
	
	else
	{
		NSLog(@"Default");
	}
	
	
}


- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
	// switchng the result
	switch (result) {
		case MFMailComposeResultCancelled:
			NSLog(@"Mail send canceled.");
			/*
			 Execute your code for canceled event here ...
			 */
			break;
		case MFMailComposeResultSaved:
			NSLog(@"Mail saved.");
			/*
			 Execute your code for email saved event here ...
			 */
			break;
		case MFMailComposeResultSent:
			NSLog(@"Mail sent.");
			/*
			 Execute your code for email sent event here ...
			 */
			break;
		case MFMailComposeResultFailed:
			NSLog(@"Mail send error: %@.", [error localizedDescription]);
			/*
			 Execute your code for email send failed event here ...
			 */
			break;
		default:
			break;
	}
	// hide the modal view controller
	[self dismissModalViewControllerAnimated:YES];
}

- (void)  facebookHelperDidPublish:(FacebookHelper *)facebookHelper
{
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Published Successfully"
														message:@"Success"
													   delegate:nil
											  cancelButtonTitle:@"OK"
											  otherButtonTitles:nil];
	[alertView show];
}



@end
