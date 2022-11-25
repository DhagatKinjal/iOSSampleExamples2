//
//  ViewList1.m
//  tableviewwithnavigation
//
//  Created by Mac on 2/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewList1.h"

@implementation ViewList1
@synthesize tbllist1;
@synthesize arr,choice;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
- (void)viewWillAppear:(BOOL)animated
{
    if([self.choice isEqualToString:@"1"])
    {
        arr=[[NSArray alloc]initWithObjects:@"Mrugesh",@"Viraj",@"Roma", nil];
    }
    else if([self.choice isEqualToString:@"2"])
    {
        arr=[[NSArray alloc]initWithObjects:@"Pooja",@"Maulik",@"Ruchi", nil];
    }
    else
    {
        NSLog(@"uday");
    }

    [tbllist1 reloadData];
    [super viewWillAppear:animated];
}
- (void)viewDidLoad
{
        
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
//___________________TABLE VIEW DAta source__________________

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text=[arr objectAtIndex:indexPath.row];
    return cell;
}


//___________________TABLE VIEW DAta source End__________________


- (void)viewDidUnload
{
    [arr release];
    [self setTbllist1:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [tbllist1 release];
    [super dealloc];
}
@end
