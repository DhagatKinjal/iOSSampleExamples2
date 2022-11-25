//
//  ViewController.h
//  UIimagepickerview
//
//  Created by Mac on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    UIImagePickerController *imagePicker;
    
}
- (IBAction)getImage:(id)sender;
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)Switched:(id)sender;

@end
