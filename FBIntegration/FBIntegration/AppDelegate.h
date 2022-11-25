//
//  AppDelegate.h
//  MyLoginFB
//
//  Created by uday on 08/07/13.
//  Copyright (c) 2013 Mac_Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@class ViewController;
@class MainViewController;

@interface AppDelegate : UIResponder<UIApplicationDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) MainViewController* mainviewController;
@property (strong, nonatomic) ViewController *viewController;

@property BOOL isNavigating;

@end
