//
//  DetailsViewController.m
//  jsonParsingExample
//
//  Created by Lion User on 27/12/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailsViewController.h"
#import "MapViewController.h"

@interface DetailsViewController ()
@property(retain,nonatomic)NSString *longitude;
@property(retain,nonatomic)NSString *latitude;
@end

@implementation DetailsViewController
@synthesize longitude,latitude;
@synthesize txtView;
@synthesize dictDetails;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSString *countryCode=[dictDetails valueForKey:@"countrycode"];
    NSString *fclName=[dictDetails valueForKey:@"fclName"];
    NSString *fcodeName=[dictDetails valueForKey:@"fcodeName"];
    self.latitude=[dictDetails valueForKey:@"lat"];
    self.longitude=[dictDetails valueForKey:@"lng"];
    NSString *population=[dictDetails valueForKey:@"population"];
    NSString *toponymName=[dictDetails valueForKey:@"toponymName"];
    txtView.text=[NSString stringWithFormat:@"Country Code-%@\n fclName-%@\n fcode Name-%@\n latitude-%@\n logitude-%d\n po[pulation- %@\n topontm Name- %@\n",countryCode,fclName,fcodeName,self.latitude,self.longitude,population,toponymName];
}

- (void)viewDidUnload
{
    [self setTxtView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [txtView release];
    [super dealloc];
}
- (IBAction)btnGoMap:(id)sender {
    MapViewController *Mvc=[[MapViewController alloc]init];
    Mvc.latitude=self.latitude;
    Mvc.longitude=self.longitude;
    [self.navigationController pushViewController:Mvc animated:YES];
}
@end









