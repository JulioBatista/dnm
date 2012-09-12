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
#import "FilterPickerViewController.h"

@interface MapViewController : UIViewController<CLLocationManagerDelegate, UITableViewDelegate, UITableViewDataSource,LocationPickerViewControllerDelegate, FilterPickerViewControllerDelegate>
{
	UITableViewController *myTableViewController;
	UITableView *dealsTableView;
	CLLocationManager *locationManager;
	UIScrollView *scrollView;
}



@property (nonatomic, strong) NSArray *annotations; // of id <MKAnnotation>

@property (strong, nonatomic) IBOutlet UILabel *locationLabel;

@property (strong, nonatomic) IBOutlet UILabel *addressLabel;

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
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlMapList;

@property (nonatomic) NSUInteger theSelectedFilter;
@property (weak, nonatomic) IBOutlet UIButton *buttonFilterButton;

- (IBAction)segmentedControlIndexChanged:(id)sender;

- (IBAction)buttonFilterButtonPressed:(id)sender;

@end
