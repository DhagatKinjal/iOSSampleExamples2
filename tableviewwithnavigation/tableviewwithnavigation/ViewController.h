//
//  ViewController.h
//  tableviewwithnavigation
//
//  Created by Mac on 2/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewList1.h"
#import "ViewList2.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *arrControllers;
    UIViewController *view1;
}

@property (nonatomic,retain) NSArray *arrControllers;
@property (nonatomic, retain) UIViewController *view1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segments;

@end
