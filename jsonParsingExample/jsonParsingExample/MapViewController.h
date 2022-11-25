//
//  MapViewController.h
//  jsonParsingExample
//
//  Created by Lion User on 27/12/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface MapViewController : UIViewController
@property (retain, nonatomic) IBOutlet MKMapView *mapVIew;
@property(retain,nonatomic)NSString *latitude;
@property(retain,nonatomic)NSString *longitude;

@end
