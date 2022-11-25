//
//  ViewController.m
//  adddynamically segment
//
//  Created by Mac on 2/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
UILabel *label;
- (void)viewDidLoad
{
    NSArray *arr=[[NSArray alloc]initWithObjects:@"part1",@"part2",@"part3",@"part4", nil];
    
    UISegmentedControl *seg=[[UISegmentedControl alloc]initWithItems:arr];
    seg.segmentedControlStyle=UISegmentedControlStylePlain;
    
    Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    Btn.frame = CGRectMake(50, 290, 150, 30);
    
    [seg addTarget:self
                         action:@selector(pickOne:)
               forControlEvents:UIControlEventValueChanged];
    
    //[self.view addSubview:seg];
    
    [arr release];
    [self.view addSubview:seg];
    [seg release];
    
    //Create label
    label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 70, 50, 20);
    label.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:label];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) pickOne:(id)sender{
    UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
    label.text = [segmentedControl titleForSegmentAtIndex: [segmentedControl selectedSegmentIndex]];
}

- (void)viewDidUnload
{
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

@end
