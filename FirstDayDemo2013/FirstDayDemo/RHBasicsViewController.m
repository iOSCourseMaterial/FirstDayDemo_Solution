//
//  RHBasicsViewController.m
//  FirstDayDemo
//
//  Created by David Fisher on 9/4/13.
//  Copyright (c) 2013 Rose-Hulman. All rights reserved.
//

#import "RHBasicsViewController.h"

@interface RHBasicsViewController () {
    int _counter;
}

@end

@implementation RHBasicsViewController

- (void) viewDidLoad {
    _counter = 0;
}

- (IBAction)countUpPressed:(id)sender {
    _counter++;
    self.countLabel.text = [NSString stringWithFormat:@"Counter = %d", _counter];
}

- (IBAction)countDownPressed:(id)sender {
    _counter--;
    self.countLabel.text = [NSString stringWithFormat:@"Counter = %d", _counter];
}
@end
