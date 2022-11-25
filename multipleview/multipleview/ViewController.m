//
//  ViewController.m
//  multipleview
//
//  Created by Mac on 2/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize addview1;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setAddview1:nil];
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
    [addview1 release];
    [super dealloc];
}
- (IBAction)view1add:(id)sender {
    UILabel *lbl=[[UILabel alloc]init];
    lbl.text=@"this is view1";
    UIView *vi=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 220)];
    //[vi addSubview:lbl];
    UIWebView *web=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 300, 200)];
    NSURL *u=[[NSURL alloc]initWithString:@"https://www.google.com"];
    NSURLRequest *req=[NSURLRequest requestWithURL:u];
    [u release];
    [web loadRequest:req];
    [vi addSubview:web];
    [web release];
    [vi setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:vi];
    [lbl release];
    [vi release];
}

- (IBAction)view2add:(id)sender {
    UILabel *lbl=[[UILabel alloc]init];
    lbl.text=@"this is view2";
    UIView *vi=[[UIView alloc]initWithFrame:CGRectMake(0, 240, 320, 220)];
    UIWebView *web=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 300, 200)];
    NSURL *u=[[NSURL alloc]initWithString:@"http://www.credencys.com"];
    NSURLRequest *req=[NSURLRequest requestWithURL:u];
    [u release];
    [web loadRequest:req];
    [vi addSubview:web];
    [web release];

    [vi setBackgroundColor:[UIColor greenColor]];
    //[vi addSubview:lbl];
    [self.view addSubview:vi];
    [lbl release];
    [vi release];
}
@end
