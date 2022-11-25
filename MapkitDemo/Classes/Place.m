//
//  Place.m
//  iTransitBuddy
//
//  Created by Blue Technology Solutions LLC 09/09/2008.
//  Copyright 2010 Blue Technology Solutions LLC. All rights reserved.
//

#import "Place.h"


@implementation Place

@synthesize name,s1,s2,s3,s4;
@synthesize s5;
@synthesize description;
@synthesize latitude;
@synthesize longitude;
@synthesize location1;
@synthesize location2;
- (void) dealloc
{
	[name release];
	[description release];
	[super dealloc];
}

@end
