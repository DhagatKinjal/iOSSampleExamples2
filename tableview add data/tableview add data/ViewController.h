//
//  ViewController.h
//  tableview add data
//
//  Created by Mac on 2/6/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,UITextFieldDelegate>
{
    NSMutableArray *marr_rec;
    NSArray *arr_names;
}
@property (retain, nonatomic) IBOutlet UITextField *txtfname;
@property (retain, nonatomic) IBOutlet UITextField *txtlname;
- (IBAction)addrec:(id)sender;
@property (retain, nonatomic) IBOutlet UITableView *tblrec;

@end
