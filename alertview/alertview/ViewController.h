//
//  ViewController.h
//  alertview
//
//  Created by Mac on 2/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
- (IBAction)takevalue:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *showvalueinthis;
- (IBAction)showpass:(id)sender;
- (IBAction)imageinalert:(id)sender;

- (IBAction)showmsg:(id)sender;
@end
