//
//  ViewController.m
//  MixTutorials
//
//  Created by Credencys on 21/06/13.
//  Copyright (c) 2013 CredencysSolutions. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

//@synthesize mapview;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [webview loadRequest:[NSURLRequest requestWithURL:
                          [NSURL URLWithString:@"http://10.1.2.80/tms/Login_Comm.aspx"]]];
    [webview addSubview:activityind];
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/10000.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 1000)];
   
        
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)loading {
    if (!webview.loading)
        [activityind stopAnimating];
    else
        [activityind startAnimating];
}

-(void)countup {
    if (MainInt<60) {
        MainInt += 1;
        seconds.text = [NSString stringWithFormat:@"%i", MainInt];
    }
    else
    {
        MainInt = 1;
    }
    
    
}

-(IBAction)red {
    label.textColor = [UIColor redColor];
    textview.textColor = [UIColor redColor];
    textfield.textColor = [UIColor redColor];
}
-(IBAction)blue {
    label.textColor = [UIColor blueColor];
    textview.textColor = [UIColor blueColor];
    textfield.textColor = [UIColor blueColor];
}
-(IBAction)green {
    label.textColor = [UIColor greenColor];
    textview.textColor = [UIColor greenColor];
    textfield.textColor = [UIColor greenColor];
}
-(IBAction)purple{
    label.textColor = [UIColor purpleColor];
    textview.textColor = [UIColor purpleColor];
    textfield.textColor = [UIColor purpleColor];
}


-(IBAction)alert {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"The Title"
                          message:@"The Message"
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:@"WebSight-1",@"WebSight-2",@"WebSight-3", nil];
    [alert show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        [[UIApplication sharedApplication]
         openURL:[NSURL URLWithString:@"http://mobisoftinfotech.com/iphone-switch-control-uiswitch-control-tutorial/"]];
    }
    if (buttonIndex == 2) {
        [[UIApplication sharedApplication]
         openURL:[NSURL URLWithString:@"http://www.appcoda.com/ios-programming-course/"]];
    }
    if (buttonIndex == 3) {
        [[UIApplication sharedApplication]
         openURL:[NSURL URLWithString:@"https://github.com/search?l=Objective-C&q=xml+parsing&ref=cmdform&type=Repositories"]];
    }
}

//-(IBAction)getlocation {
//    mapview.showsUserLocation = YES;
//}
//-(IBAction)setMap:(id)sender {
//    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
//        case 0:
//            mapview.mapType = MKMapTypeStandard;
//            break;
//        case 1:
//            mapview.mapType = MKMapTypeSatellite;
//            break;
//        case 2:
//            mapview.mapType = MKMapTypeHybrid;
//            break;
//        default:
//            break;
//    }
//}
//

-(IBAction)link {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.youtube.com/"]];
}

-(IBAction)remindbutton {
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:[[editremind text]intValue]];
}
-(IBAction)resetbutton {
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


-(IBAction)start:(id)sender {
    MainInt = 0;
    timer1 = [NSTimer scheduledTimerWithTimeInterval:1.0/60.0
                                             target:self selector:@selector(countup)userInfo:nil repeats:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)PostToFacebook:(id)sender {
//    mySLComposerSheet = [[SLComposeViewController alloc] init];
//    mySLComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
//    [mySLComposerSheet setInitialText:@"Place Text Here"];
//    [self presentViewController:mySLComposerSheet animated:YES completion:nil];
}

-(IBAction)Screenshot {
    UIGraphicsBeginImageContext(self.view.bounds.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *screenshotimage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(screenshotimage, nil, nil, nil);
}


//////////////timer ///////////////////////
//ViewController.h
//@interface ViewController :UIViewController {
//    IBOutlet UILabel *label;
//    NSTimer *timer;
//}
//-(void)updateTimer;
//
//@end
//
//
//ViewController.m
//@implementation ViewController
//-(void)updateTimer {
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"hh:mm:ss"];
//    label.text = [formatter stringFromDate:[NSDate date]];
//}
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    timer = [NSTimer scheduledTimerWithTimeInterval:0.5
//                                             target:self
//                                           selector:@selector(updateTimer)
//                                           userInfo:nil 
//                                            repeats:YES];
//}
//@end


/////////load image from url///////////

//ViewController.h
//@interface ViewController :UIViewController {
//    IBOutlet UIImageView *imageview;
//}
//@end
//
//
//ViewController.m
//@implementation ViewController
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    imageview.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:
//                                              [NSURL URLWithString:@" Place image url here "]]];
//} 
//@end

///type casting in xcode and display the message in alert view
//int a=[txtvalue1.text intValue];// type casting
//alt.message=[NSString stringWithFormat:@"%d", c];//display the message in alert view
//make background color
// [self.view setBackgroundColor:[UIColor clearColor]];
//[txt setTextColor:[UIColor redColor]];//set text color
//segment init and give it index so we can put condition for perticular segment....
//UISegmentedControl *seg=(UISegmentedControl *)sender;
//int segIndex=[seg selectedSegmentIndex];
//[segment removeSegmentAtIndex:total animated:YES];// remove segment
//[segment insertSegmentWithTitle:segname  atIndex:ind animated:YES];// insert the segment 	



@end
