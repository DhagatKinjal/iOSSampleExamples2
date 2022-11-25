//
//  ViewController.m
//  tableview add data
//
//  Created by Mac on 2/6/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize tblrec;
@synthesize txtfname;
@synthesize txtlname;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    marr_rec=[[NSMutableArray alloc]init];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//************ TableDatasource **********************


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return marr_rec.count;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Personal Details";
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return @"End Details";
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell;
    cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    arr_names=[marr_rec objectAtIndex:indexPath.section];
    cell.textLabel.text=[arr_names objectAtIndex:indexPath.row];
    //[tableView reloadData];
    return cell;
}


//************ End TableDatasource **********************

//************ TableDelegate **********************



//************ End TableDelegate **********************
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
- (void)viewDidUnload
{
    [marr_rec release];
    [self setTxtfname:nil];
    [self setTxtlname:nil];
    [self setTblrec:nil];
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
    [txtfname release];
    [txtlname release];
    [tblrec release];
    [super dealloc];
}
- (IBAction)addrec:(id)sender {
    arr_names=[NSArray arrayWithObjects:txtfname.text,txtlname.text, nil];
    [marr_rec addObject:arr_names];
    [tblrec reloadData];
}
@end
