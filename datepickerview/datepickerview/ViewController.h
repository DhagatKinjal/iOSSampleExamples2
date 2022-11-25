//
//  ViewController.h
//  datepickerview
//
//  Created by Mac on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *lblselecteddate;
@property (retain, nonatomic) IBOutlet UIDatePicker *datepicker;
- (IBAction)selectDate:(id)sender;
- (IBAction)DateModeSelect:(id)sender;

@end
