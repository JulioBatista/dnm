
//
//  NewDealsViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NewDealsViewController.h"

@interface NewDealsViewController ()

@end

@implementation NewDealsViewController
@synthesize scrollView;

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
	[self arrangeButtons];
}

- (void)viewDidUnload
{
	[self setScrollView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonMapPressed:(id)sender 
{
	self.tabBarController.selectedIndex = 0;
}

- (void)arrangeButtons
{
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
	
	CGFloat scrollWidth = 0 + 0.f;
	CGRect frame;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_001_seeall.png"] size];	
	UIButton *button001 = [[UIButton alloc] initWithFrame:frame];
	[button001 setImage:[images objectAtIndex:0] forState:UIControlStateNormal];
	[button001 setTag:0];
	[button001 addTarget:self action:@selector(categorySeeAllPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button001];
	
	
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_002_bars.png"] size];
	UIButton *button002 = [[UIButton alloc] initWithFrame:frame];
	[button002 setImage:[images objectAtIndex:1] forState:UIControlStateNormal];
	[button002 setTag:1];
	[button002 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button002];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_003_dining.png"] size];
	UIButton *button003 = [[UIButton alloc] initWithFrame:frame];
	[button003 setImage:[images objectAtIndex:2] forState:UIControlStateNormal];
	[button003 setTag:2];
	[button003 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button003];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_004_family.png"] size];
	UIButton *button004 = [[UIButton alloc] initWithFrame:frame];
	[button004 setImage:[images objectAtIndex:3] forState:UIControlStateNormal];
	[button004 setTag:3];
	[button004 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button004];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_005_fun.png"] size];
	UIButton *button005 = [[UIButton alloc] initWithFrame:frame];
	[button005 setImage:[images objectAtIndex:4] forState:UIControlStateNormal];
	[button005 setTag:4];
	[button005 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button005];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_006_services.png"] size];
	UIButton *button006 = [[UIButton alloc] initWithFrame:frame];
	[button006 setImage:[images objectAtIndex:5] forState:UIControlStateNormal];
	[button006 setTag:5];
	[button006 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button006];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_007_shopping.png"] size];
	UIButton *button007 = [[UIButton alloc] initWithFrame:frame];
	[button007 setImage:[images objectAtIndex:6] forState:UIControlStateNormal];
	[button007 setTag:6];
	[button007 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button007];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_008_travel.png"] size];
	UIButton *button008 = [[UIButton alloc] initWithFrame:frame];
	[button008 setImage:[images objectAtIndex:7] forState:UIControlStateNormal];
	[button008 setTag:7];
	[button008 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button008];
	
	scrollWidth += 88.0f;
	frame.origin.x = scrollWidth;
	frame.origin.y = 0;
	frame.size = [[UIImage imageNamed:@"category_icon_009_wellness.png"] size];
	UIButton *button009 = [[UIButton alloc] initWithFrame:frame];
	[button009 setImage:[images objectAtIndex:8] forState:UIControlStateNormal];
	[button009 setTag:8];
	[button009 addTarget:self action:@selector(categoryBarsPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.scrollView addSubview:button009];
	
	[self.scrollView setBackgroundColor:[UIColor whiteColor]]; 
	self.scrollView.pagingEnabled = NO;
	self.scrollView.contentSize = CGSizeMake(scrollWidth, 72.0f);
}

@end
