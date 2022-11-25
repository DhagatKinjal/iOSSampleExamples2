//
//  ViewController.m
//  datepickerview
//
//  Created by Mac on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize lblselecteddate;
@synthesize datepicker;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    //[datepicker setDatePickerMode:UIDatePickerModeDate];
    [datepicker setDatePickerMode:UIDatePickerModeDateAndTime];
    //[datepicker setDatePickerMode:UIDatePickerModeCountDownTimer];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLblselecteddate:nil];
    [self setDatepicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [lblselecteddate release];
    [datepicker release];
    [super dealloc];
}
- (IBAction)selectDate:(id)sender {
    
    NSDate *d=datepicker.date;
    NSDateFormatter *f=[[NSDateFormatter alloc]init];
    [f setDateFormat:@"MM-dd-yyyy 'at' hh:mm:ss"];
    NSString *datestring=[f stringFromDate:d];// convert date to string formate 
    lblselecteddate.text=datestring;
}

- (IBAction)DateModeSelect:(id)sender {
    
    UIButton *btn=(UIButton *)sender;
    
    if(btn.tag==0)
    {
        datepicker.datePickerMode=UIDatePickerModeDate;
    }
    else if(btn.tag==1)
    {
        datepicker.datePickerMode=UIDatePickerModeTime;
    }
    else if(btn.tag==2)
    {
        [datepicker setDatePickerMode:UIDatePickerModeDateAndTime];
    }
}
@end
