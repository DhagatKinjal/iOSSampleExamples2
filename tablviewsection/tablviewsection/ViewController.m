//
//  ViewController.m
//  tablviewsection
//
//  Created by Mac on 2/6/13.
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

- (void)viewDidLoad
{
    arr_name=[NSArray arrayWithObjects:@"Uday",@"Patel", nil];
    
    marr_rec=[[NSMutableArray alloc]init];
    
    [marr_rec addObject:arr_name];
    
    arr_name=[NSArray arrayWithObjects:@"Bhadresh",@"Gosai", nil];
    [marr_rec addObject:arr_name];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//*****TAble View Data source************
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return marr_rec.count;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return  @"List Of Student Name";
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return @"End List";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arr_name.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
        arr_name=[marr_rec objectAtIndex:indexPath.section];
    
    cell.textLabel.text=[arr_name objectAtIndex:indexPath.row];
    
    return cell;
}
//*****End*******************************
- (void)viewDidUnload
{
    [marr_rec release];
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
