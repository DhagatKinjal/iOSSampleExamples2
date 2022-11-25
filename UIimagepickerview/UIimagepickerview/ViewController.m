//
//  ViewController.m
//  UIimagepickerview
//
//  Created by Mac on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize imageView;

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
    [self setImageView:nil];
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
//- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image{
//    imageView=[[UIImageView alloc]initWithImage:image];
//    [picker dismissModalViewControllerAnimated:YES];
//    [imageView release];
//}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissModalViewControllerAnimated:YES];
}
- (IBAction)getImage:(id)sender {
    imagePicker=[[UIImagePickerController alloc]init];
    [imagePicker setDelegate:self];
    imagePicker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary ;
    [self presentModalViewController:imagePicker animated:YES];
   
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *img=[info objectForKey:@"UIImagePickerControllerOriginalImage"];
    imageView.image=img;
    [picker dismissModalViewControllerAnimated:YES];
    
}
- (void)dealloc {
    [imageView release];
    [super dealloc];
}
- (IBAction)Switched:(id)sender {
    UISwitch *s=(UISwitch *) sender;
    if(s.on==YES)
    {
        imageView.hidden=NO;
    }
    else
    {
        imageView.hidden=YES;
    }
}
@end
