//
//  ViewController.m
//  Timeup
//
//  Created by Rajan Twanabashu on 8/29/12.
//  Copyright (c) 2012 Zurelsoft Pvt.Ltd. All rights reserved.
//

#import "ViewController.h"
#import "timeup.h"
@implementation ViewController
@synthesize timeInput;
@synthesize startButton;
@synthesize timeremaining;


-(void) updateTimeInParentView:(NSString *)remainingTime
{
    self.timeremaining.text = remainingTime;  
}

-(void) timesUp
{
    NSLog(@"time's up");
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time's UP" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

-(IBAction)onclickStartButton:(id)sender
{
    NSLog(@"start button clicked:%@", self.timeInput.text);
    
    [self.timeInput resignFirstResponder];
    timeup *timeUP = [[timeup alloc] init];
    timeUP.delegate=self;
    timeUP.timeInput= [self.timeInput.text integerValue];
    [timeUP runCountDownTimer];
    
    
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTimeInput:nil];
    [self setStartButton:nil];
    [self setTimeremaining:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
