//
//  ViewController.h
//  citystateinpickerview
//
//  Created by Mac on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSArray *arrcity,*arrstate;
}
@property (retain, nonatomic) IBOutlet UIPickerView *pickerstatecity;

@end
