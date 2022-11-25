//
//  ViewController.h
//  tableviewselect
//
//  Created by Mac on 2/6/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *arr_name;
    NSMutableArray *marr_rec;

}
@property (retain, nonatomic) IBOutlet UITableView *tblnamelist;

@end
