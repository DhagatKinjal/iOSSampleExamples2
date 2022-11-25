//
//  ViewController.m
//  alertview
//
//  Created by Mac on 2/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize showvalueinthis;

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
    [self setShowvalueinthis:nil];
    
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
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(alertView.tag==1)
    {
        if(buttonIndex==0)
        {
            showvalueinthis.text=@"no value set";
        }
        else if(buttonIndex==1)
        {
            UITextField *txt=(UITextField *) [alertView textFieldAtIndex:0];
            showvalueinthis.text=txt.text;
        }
    }
    else if(alertView.tag==2)
    {
        UITextField *txtu=(UITextField *) [alertView textFieldAtIndex:0];
        
        UITextField *txtp=(UITextField *) [alertView textFieldAtIndex:1];
        
        NSString *strp=txtp.text;
        NSString *stru=txtu.text;
        if([strp isEqualToString:@"aaa"])
        {
            if([stru isEqualToString:@"om"])
            {
                showvalueinthis.text=@"login done";
            }
        }
        else
        {
            showvalueinthis.text=@"Login is not done";
        }
        //showvalueinthis.text=txtp.text;
    }
}
- (IBAction)takevalue:(id)sender {
    UIAlertView *alt=[[UIAlertView alloc]init];
    
    
    [alt setTitle:@"Give Me Some Value"];
    [alt setMessage:@"Value:"];
    [alt setDelegate:self];
    [alt addButtonWithTitle:@"Cancel"];
    [alt addButtonWithTitle:@"Get Value"];
    alt.alertViewStyle=UIAlertViewStylePlainTextInput ;
    alt.tag=1;
    [alt show];
    [alt release];
}

- (IBAction)showpass:(id)sender {
    UIAlertView *alt=[[UIAlertView alloc]init];
    
    
    [alt setTitle:@"Login"];
    [alt setMessage:@"Enter Login Details"];
    [alt setDelegate:self];
    [alt addButtonWithTitle:@"Login"];
    alt.alertViewStyle=UIAlertViewStyleLoginAndPasswordInput ;
    alt.tag=2;
    [alt show];
    [alt release];
}

- (IBAction)imageinalert:(id)sender {
    
    UIImageView *iv=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"2.png"]];
    [iv setFrame:CGRectMake(25, 40, 55, 88)];
    
    UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"Title" message:@"hello!" delegate:self cancelButtonTitle:@"Bey!" otherButtonTitles: nil];
    [alt addSubview:iv];
    [iv release];
    [alt show];
    [alt release];
}

- (IBAction)showmsg:(id)sender {
    UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"Title" message:@"hello!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [alt show];
    [alt release];
}
- (void)dealloc {
    [showvalueinthis release];
    
    [super dealloc];
}
@end
