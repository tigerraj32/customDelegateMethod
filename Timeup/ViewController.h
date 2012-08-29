//
//  ViewController.h
//  Timeup
//
//  Created by Rajan Twanabashu on 8/29/12.
//  Copyright (c) 2012 Zurelsoft Pvt.Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "timeup.h"

@interface ViewController : UIViewController<timeupDelegate>
@property (strong, nonatomic) IBOutlet UITextField *timeInput;
@property (strong, nonatomic) IBOutlet UIButton *startButton;
@property (strong, nonatomic) IBOutlet UILabel *timeremaining;

-(IBAction)onclickStartButton:(id)sender;
@end
