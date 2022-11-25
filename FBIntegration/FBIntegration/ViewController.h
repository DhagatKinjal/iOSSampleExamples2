//
//  ViewController.h
//  FBIntegration
//
//  Created by Credencys on 08/07/13.
//  Copyright (c) 2013 CredencysSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface ViewController : UIViewController<FBLoginViewDelegate>
- (IBAction)Twitter:(id)sender;

@property (unsafe_unretained, nonatomic) IBOutlet FBLoginView *FBLoginView;

@end
