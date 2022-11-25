//
//  AppDelegate.h
//  tableviewwithnavigation
//
//  Created by Mac on 2/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate,UINavigationControllerDelegate>
{
    UINavigationController *nav;
}
@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (nonatomic, retain) UINavigationController *nav;
@end
