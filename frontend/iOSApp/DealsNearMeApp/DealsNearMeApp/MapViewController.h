//
//  MapViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"
@interface MapViewController : UIViewController<CLLocationManagerDelegate, UITableViewDelegate, UITableViewDataSource>
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

- (IBAction)buttonListPressed:(id)sender;




@property (strong, nonatomic) IBOutlet UIBarButtonItem *buttonListButton;



@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, strong) NSArray *deals; // of Deal dictionaries

@property (nonatomic, strong) NSMutableArray *newdeals;

@property (nonatomic, weak) IBOutlet UITableView *dealsTableView;

@property(nonatomic) BOOL isMapVisible;

@property (nonatomic, assign) UITableViewController *myTableViewController;

@end
