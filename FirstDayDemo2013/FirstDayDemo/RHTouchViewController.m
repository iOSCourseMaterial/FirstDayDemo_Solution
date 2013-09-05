//
//  RHTouchViewController.m
//  FirstDayDemo
//
//  Created by David Fisher on 9/4/13.
//  Copyright (c) 2013 Rose-Hulman. All rights reserved.
//

#import "RHTouchViewController.h"

@interface RHTouchViewController ()

@end

@implementation RHTouchViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch* aTouch = [touches anyObject];
    [UIView beginAnimations:nil context:nil];
    self.logoImageView.center = [aTouch locationInView:self.view];
    [UIView commitAnimations];
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch* aTouch = [touches anyObject];
    [UIView beginAnimations:nil context:nil];
    self.logoImageView.center = [aTouch locationInView:self.view];
    [UIView commitAnimations];
}


@end
