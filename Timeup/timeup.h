//
//  timeup.h
//  Timeup
//
//  Created by Rajan Twanabashu on 8/29/12.
//  Copyright (c) 2012 Zurelsoft Pvt.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol timeupDelegate <NSObject>
@optional
-(void) updateTimeInParentView:(NSString *) remainingTime;
-(void) timesUp;

@end

@interface timeup : NSObject
@property(nonatomic, strong) id <timeupDelegate> delegate;
@property(nonatomic, readwrite) NSInteger timeInput;
@property(nonatomic, strong) NSTimer *timer;
-(void) runCountDownTimer;
@end
