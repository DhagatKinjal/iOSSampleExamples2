//
//  ViewController.m
//  tableviewwithnavigation
//
//  Created by Mac on 2/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController
@synthesize segments;

@synthesize arrControllers,view1;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    ViewList1 *View1=[[ViewList1 alloc]initWithNibName:@"ViewList1" bundle:nil];
    ViewList2 *View2=[[ViewList2 alloc]initWithNibName:@"ViewList2" bundle:nil];
    
    View1.title=@"This is List 1";
    
    View2.title=@"This is List 2";
    
    arrControllers=[[NSArray alloc]initWithObjects:View1,View2, nil];
    self.title=@"Main List";
    [View1 release];
    [View2 release];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//________________________TableView Data Source_________________
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [arrControllers count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    view1=[arrControllers objectAtIndex:indexPath.row];
    cell.textLabel.text=view1.title;
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Main List";
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return @"End List";
}
//________________________TableView Data Source END_________________



//________________________TableView Delegate_________________

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellAccessoryDetailDisclosureButton;//for disclosure button
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *str=@"";
    if (segments.selectedSegmentIndex==0) {
        str=@"1";
    }
    else
    {
        str=@"2";
    }
    if(indexPath.row==0)
    {
        ViewList1 *viewc1=[arrControllers objectAtIndex:0];
        viewc1.choice=str;
        view1=viewc1;
    }
    else
    {
        ViewList2 *viewc2=[arrControllers objectAtIndex:1];
        view1=viewc2;
    }
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self.navigationController pushViewController:view1 animated:YES];
}

//________________________TableView Delegate End_________________

- (void)viewDidUnload
{
    [arrControllers release];
    [self setSegments:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
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
    [segments release];
    [super dealloc];
}
@end
