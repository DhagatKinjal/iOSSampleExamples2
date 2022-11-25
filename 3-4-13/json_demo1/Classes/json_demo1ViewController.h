//
//  json_demo1ViewController.h
//  json_demo1
//
//  Created by Marin Todorov on 2/24/11.
//  Copyright 2011 Marin Todorov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface json_demo1ViewController : UIViewController {
	IBOutlet UILabel* label;
	
	NSMutableData* responseData;
}

@property (retain, nonatomic) NSMutableData* responseData;

-(IBAction)loadData;

@end

