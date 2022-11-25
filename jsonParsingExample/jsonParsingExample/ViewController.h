//
//  ViewController.h
//  jsonParsingExample
//
//  Created by Lion User on 27/12/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLConnectionDelegate,UITableViewDelegate,UITableViewDataSource>
@property (retain, nonatomic) IBOutlet UITableView *tblView;

@end
