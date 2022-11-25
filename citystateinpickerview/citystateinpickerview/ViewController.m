//
//  ViewController.m
//  citystateinpickerview
//
//  Created by Mac on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize pickerstatecity;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    arrstate=[[NSArray alloc]initWithObjects:@"GUJARAT",@"MP", nil];
    arrcity=[[NSArray alloc]initWithObjects:@"SURAT",@"MEHSANA",@"AHM",@"vadodara", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [arrstate release];
    [arrcity release];
    
    [self setPickerstatecity:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
//************** PICKER VIEW  ***********************
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component==0)
    {
        return [arrstate count];
    }
    else
    {
        return [arrcity count];
    }
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component==0)
    {
        return [arrstate objectAtIndex:row];
    }
    else 
    {
        
        if(arrcity ==nil)
        {
            return @"no selection";
        }    
        else
        {
        return [arrcity objectAtIndex:row];
        }
    }
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)componen{
    if(componen==0)
    {
        if(arrcity!=nil)
        {
            [arrcity release];
        }
        if(row==0)
        {
            arrcity=[[NSArray alloc]initWithObjects:@"SURAT",@"MEHSANA",@"AHM",@"vadodara", nil];
            
            
        }
        else if(row==1)
        {
            arrcity=[[NSArray alloc]initWithObjects:@"AAAA",@"BBBB",@"CCCC", nil];
            
        }[pickerView reloadComponent:1];
        
    }
    else
    {
        [pickerView reloadComponent:1];
    }
}
//End

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
    [pickerstatecity release];
    [super dealloc];
}
@end
