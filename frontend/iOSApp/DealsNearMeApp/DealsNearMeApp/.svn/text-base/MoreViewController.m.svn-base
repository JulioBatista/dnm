//
//  MoreViewController.m
//  DealsNearMeApp
//
//  Created by  on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MoreViewController.h"

@interface MoreViewController ()

	

@end

@implementation MoreViewController
@synthesize pageControl = _pageControl;

@synthesize scrollView = _scrollView;



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
	
	[self.pageControl setNumberOfPages:4];
	
	[self.pageControl setCurrentPage:1];
	
	pageControlBeingUsed = NO;
	
	
	NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor greenColor], [UIColor blueColor], nil];

	
	for (int i = 0; i < colors.count; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
		
        UIView *subview = [[UIView alloc] initWithFrame:frame];
        subview.backgroundColor = [colors objectAtIndex:i];
        [self.scrollView addSubview:subview];
		

    }
	
	
	/* 
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil]; 
	
	UIViewController *mySettingsViewController = [storyboard instantiateViewControllerWithIdentifier:@"SettingsViewController"];
	
	

	
	
	[self.scrollView addSubview:mySettingsViewController.view];
    
	UIViewController *myCategoriesViewController = [storyboard instantiateViewControllerWithIdentifier:@"CategoriesViewController"];
	
	[self.scrollView addSubview:myCategoriesViewController.view];
	 */
	
	self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * colors.count, self.scrollView.frame.size.height);
	
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{

	
	// Update the page control when more than 50% of the previous / next page is visible
	CGFloat pageWidth = self.scrollView.frame.size.width;
	
	int page = floor((self.scrollView.contentOffset.x - pageWidth/2) / pageWidth) + 1;
	[self.pageControl setCurrentPage:page];
	
}

- (void)viewDidUnload
{
	[self setPageControl:nil];
	[self setScrollView:nil];
	[self setPageControl:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)doChangePage:(id)sender {
	
	// update the scroll view to the appropriate page
    CGRect frame;
    frame.origin.x = self.scrollView.frame.size.width * self.pageControl.currentPage;
    frame.origin.y = 0;
    frame.size = self.scrollView.frame.size;
    [self.scrollView scrollRectToVisible:frame animated:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    pageControlBeingUsed = NO;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    pageControlBeingUsed = NO;
}
@end
