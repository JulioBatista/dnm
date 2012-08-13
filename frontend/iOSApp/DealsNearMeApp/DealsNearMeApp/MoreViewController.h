//
//  MoreViewController.h
//  DealsNearMeApp
//
//  Created by  on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreViewController : UIViewController<UIScrollViewDelegate> 
{
	UIScrollView *scrollView;
	UIPageControl *pageControl;
	BOOL pageControlBeingUsed;
}

@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

- (IBAction)doChangePage:(id)sender;

@end
