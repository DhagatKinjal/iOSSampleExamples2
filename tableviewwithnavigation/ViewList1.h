//
//  ViewList1.h
//  tableviewwithnavigation
//
//  Created by Mac on 2/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewList1 : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *arr;
    NSString *choice;
}
@property (retain, nonatomic) IBOutlet UITableView *tbllist1;

@property (retain, nonatomic) NSArray *arr;
@property (retain, nonatomic) NSString *choice;
@end
