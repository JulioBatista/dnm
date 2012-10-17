//
//  MapViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"
#import "LocationPickerViewController.h"
#import "NewFilterPickerViewController.h"

@interface MapViewController : UIViewController<CLLocationManagerDelegate, UITableViewDelegate, UITableViewDataSource,LocationPickerViewControllerDelegate, NewFilterPickerViewController, UIAlertViewDelegate>
{
	UITableViewController *myTableViewController;
	UITableView *dealsTableView;
	CLLocationManager *locationManager;
	UIScrollView *scrollView;
	NSTimer *fiveSecondsTimer;
	NSTimer *threeSecondsTimer;
	NSTimer *twoSecondsTimer;
}



@property (nonatomic, strong) NSArray *annotations; // of id <MKAnnotation>



@property (strong, nonatomic) IBOutlet UILabel *addressLabel;

@property (strong, nonatomic) IBOutlet UILabel *labelLocationLabel;


- (IBAction)doLocateMeButton:(id)sender;



@property (weak, nonatomic) IBOutlet UIView *viewFilterByView;


@property (strong, nonatomic) IBOutlet UIBarButtonItem *buttonToggle;

@property (nonatomic) BOOL isScrollViewVisible;


- (IBAction)buttonToggleScrollViewPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *buttonToggleScrollView;


@property (strong, nonatomic) IBOutlet UIBarButtonItem *buttonListButton;



@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UIImageView *scrollDividerView;




@property (nonatomic, strong) NSArray *deals; // of Deal dictionaries

@property (nonatomic, strong) NSMutableArray *newdeals;

@property (nonatomic, weak) IBOutlet UITableView *dealsTableView;

@property(nonatomic) BOOL isMapVisible;

@property (nonatomic, assign) UITableViewController *myTableViewController;

@property (nonatomic, strong) NSTimer *locationTimer;

@property (nonatomic) NSUInteger mapIndexPath;


@property (nonatomic) NSUInteger theSelectedRatingFilter;

@property (nonatomic) NSUInteger theSelectedDistanceFilter;





- (IBAction)segmentedControlMapListButtonPressed:(id)sender;
- (IBAction)segmentedControlFilterButtonPressed:(id)sender;



@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlFilterButton;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlMapListButton;

@property (nonatomic) CLLocationCoordinate2D mycoordinate;
@property (nonatomic) CLLocationCoordinate2D newcoordinate;



@end
