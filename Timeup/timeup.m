//
//  timeup.m
//  Timeup
//
//  Created by Rajan Twanabashu on 8/29/12.
//  Copyright (c) 2012 Zurelsoft Pvt.Ltd. All rights reserved.
//

#import "timeup.h"

@implementation timeup
@synthesize delegate, timeInput,timer;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void) timerEventHandler:(id) sender
{
    self.timeInput -=1;
    if ([self.delegate respondsToSelector:@selector(updateTimeInParentView:)]) {
         [self.delegate updateTimeInParentView:[NSString stringWithFormat:@"%d", self.timeInput]];
    }
   
    if (self.timeInput==0) {
        [self.timer invalidate ];
         if ([self.delegate respondsToSelector:@selector(timesUp)])
        [self.delegate performSelector:@selector(timesUp)];
        
    }
}

-(void) runCountDownTimer
{
    if (self.timeInput >0) {
        
    
    self.timer =  [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerEventHandler:) userInfo:nil repeats:YES];
    }
}
@end
