//
//  ViewController.m
//  CustomizeCell
//
//  Created by Credencys on 18/06/13.
//  Copyright (c) 2013 Credencys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)CustomCell:(id)sender {
    static NSString *CellIdentifier = @"Cell";
    Cell *cell= (Cell *) [Cell dequeueReusableCellWithIdentifier:CellIdentifier];//    objCell=[[Cell alloc]initWithNibName:@"Cell" bundle:nil];
    
   
}
@end
