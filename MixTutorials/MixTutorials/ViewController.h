//
//  ViewController.h
//  MixTutorials
//
//  Created by Credencys on 21/06/13.
//  Copyright (c) 2013 CredencysSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>
#import "QuartzCore/QuartzCore.h"

//#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UIWebView *webview;
    IBOutlet UIActivityIndicatorView*activityind;
    NSTimer *timer;
    
    IBOutlet UILabel *seconds;
    NSTimer *timer1;
    int MainInt;
    
    IBOutlet UILabel *label;
    IBOutlet UITextField *textfield;
    IBOutlet UITextView *textview;
    IBOutlet UIScrollView *scroller;
    //MKMapView *mapview;
    
    
    IBOutlet UITextField *editremind;
    int reminders;

    SLComposeViewController *mySLComposerSheet;
    
 
}

-(IBAction)start:(id)sender;
-(void)countup;

-(IBAction)red;
-(IBAction)blue;
-(IBAction)green;
-(IBAction)purple;

-(IBAction)alert;

- (IBAction)link;

-(IBAction)remindbutton;
-(IBAction)resetbutton;

- (IBAction)PostToFacebook:(id)sender;

-(IBAction)Screenshot;// for screen shot

//@property (nonatomic, retain) IBOutlet MKMapView *mapview;
//-(IBAction)setMap:(id)sender;
//-(IBAction)getlocation;
@end
