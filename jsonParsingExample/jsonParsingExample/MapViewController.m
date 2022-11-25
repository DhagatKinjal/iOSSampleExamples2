//
//  MapViewController.m
//  jsonParsingExample
//
//  Created by Lion User on 27/12/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"


@interface MapViewController ()

@end

@implementation MapViewController
@synthesize mapVIew;
@synthesize longitude;
@synthesize latitude;

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
    // Do any additional setup after loading the view from its nib.
    CLLocationCoordinate2D cordinate;
    cordinate.latitude=[latitude intValue];
    cordinate.longitude=[longitude intValue];
    MKCoordinateSpan span;
    span.latitudeDelta=50.0f;
    span.longitudeDelta=50.0f;
    
    MKCoordinateRegion region;
    region.span=span;
    region.center=cordinate;
    [self.mapVIew setRegion:region animated:YES];
}

- (void)viewDidUnload
{
    [self setMapVIew:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [mapVIew release];
    [super dealloc];
}
@end
