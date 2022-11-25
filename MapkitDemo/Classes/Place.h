//
//  Place.h
//  iTransitBuddy
//
//  Created by Blue Technology Solutions LLC 09/09/2008.
//  Copyright 2010 Blue Technology Solutions LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Place : NSObject {

	NSString* name;
	NSString* description;
	double latitude;
	double longitude;
    CLLocation *location2;
    CLLocation *location1 ;
    NSString *s1;
    NSString *s2;
    NSString *s3;
    NSString *s4;
    NSString *s5;
}

@property (nonatomic, retain) NSString* name,*s1,*s2,*s3,*s4,*s5;
@property (nonatomic, retain) NSString* description;
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;
@property (nonatomic, retain)CLLocation *location1;
@property (nonatomic, retain)CLLocation *location2;
@end
