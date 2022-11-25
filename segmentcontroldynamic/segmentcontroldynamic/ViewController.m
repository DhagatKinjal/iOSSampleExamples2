//
//  ViewController.m
//  segmentcontroldynamic
//
//  Created by Mac on 2/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize segment;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [segment removeAllSegments];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setSegment:nil];
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
    [segment release];
    [super dealloc];
}
- (IBAction)addseg:(id)sender {
    if([segment numberOfSegments]>=10)
    {
        UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"Error" message:@"No more Segment Item Added to This" delegate:self cancelButtonTitle:@"Ok!" otherButtonTitles: nil];
        [alt show];
        [alt release];
    }
    else
    {
        NSString *segname=@"";
        int ind;
        if([segment numberOfSegments]==0)
        {
            segname=@"S1";
            ind=0;
        }
        else if([segment numberOfSegments]==1)
        {
            
            segname=@"S2";
            ind=1;
        }
        else if([segment numberOfSegments]==2)
        {
            
            segname=@"S3";
            ind=2;
        }
        else if([segment numberOfSegments]==3)
        {
            
            segname=@"S4";
            ind=3;
        }
        else if([segment numberOfSegments]==4)
        {
            
            segname=@"S5";
            ind=4;
        }
        else if([segment numberOfSegments]==5)
        {
            
            segname=@"S6";
            ind=5;
        }
        else if([segment numberOfSegments]==6)
        {
            
            segname=@"S7";
            ind=6;
        }
        else if([segment numberOfSegments]==7)
        {
            
            segname=@"S8";
            ind=7;
        }
        else if([segment numberOfSegments]==8)
        {
            
            segname=@"S9";
            ind=8;
        }
        else if([segment numberOfSegments]==9)
        {
            
            segname=@"S10";
            ind=9;
        }
        
        [segment insertSegmentWithTitle:segname  atIndex:ind animated:YES];
    }
}

- (IBAction)removeseg:(id)sender {
    if([segment numberOfSegments]==0)
    {
        UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"Error" message:@"No more Segment Item deleted from This" delegate:self cancelButtonTitle:@"Ok!" otherButtonTitles: nil];
        [alt show];
        [alt release];
    }
    else
    {
        int total=[segment numberOfSegments];
        total--;
        [segment removeSegmentAtIndex:total animated:YES];
    }
}
@end
