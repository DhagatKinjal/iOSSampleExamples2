//
//  DetailsViewController.h
//  jsonParsingExample
//
//  Created by Lion User on 27/12/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextView *txtView;
- (IBAction)btnGoMap:(id)sender;
@property(nonatomic,retain)NSMutableDictionary *dictDetails;
@end
