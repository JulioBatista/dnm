//
//  SubmitScreenViewController.m
//  DealsNearMeApp
//
//  Created by Das on 9/16/12.
//
//

#import "SubmitScreenViewController.h"

@interface SubmitScreenViewController ()

@end

@implementation SubmitScreenViewController
@synthesize textFieldBusinessName = _textFieldBusinessName;
@synthesize textFieldTwitterHandle = _textFieldTwitterHandle;
@synthesize textFieldEmailAddress = _textFieldEmailAddress;

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
}

- (void)viewDidUnload
{
	[self setTextFieldBusinessName:nil];
	[self setTextFieldTwitterHandle:nil];
	[self setTextFieldEmailAddress:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)buttonBackButtonPressed:(id)sender
{
	[self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)buttonSubmitButtonPressed:(id)sender
{
	// allocatind new message composer window
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
	
    // setting a delegate method to "self"
    mc.mailComposeDelegate = self;
	
    // pre-populating the message subject
    [mc setSubject:@"Request to add my business"];
	
	
	NSString *messageString = @"";
	
	messageString = [messageString stringByAppendingString:@"<p>Business Name : "];
	
	messageString = [messageString stringByAppendingString:self.textFieldBusinessName.text];
	
	messageString = [messageString stringByAppendingString:@"</p><p>Email Address : "];
	
	messageString = [messageString stringByAppendingString:self.textFieldEmailAddress.text];
	
	messageString = [messageString stringByAppendingString:@"</p><p>Twitter Handle : "];
	
	messageString = [messageString stringByAppendingString:self.textFieldTwitterHandle.text];
	
	messageString = [messageString stringByAppendingString:@"</p>"];
	
	
	
    // adding content of the message as a plain text
    // [mc setMessageBody:@"Send me a message is you like this tutorial :)" isHTML:NO];
	
    // adding content of the message as an HTML
	
	
	
    [mc setMessageBody:messageString isHTML:YES];
	
	// adding recipients
	[mc setToRecipients:[NSArray arrayWithObjects:@"DealsNear.Me <levibergovoy@gmail.com>", nil]];
	
	// adding recipients for a send copy to (arrayWithObject or arrayWithObjects)
	// [mc setCcRecipients:[NSArray arrayWithObject:@"DealsNear.Me <meir@leviait.com>"]];
	
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
@end
