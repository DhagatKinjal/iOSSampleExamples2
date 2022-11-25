//
//  ViewController.h
//  segmentcontroldynamic
//
//  Created by Mac on 2/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UISegmentedControl *segment;
- (IBAction)addseg:(id)sender;
- (IBAction)removeseg:(id)sender;

@end
