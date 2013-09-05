//
//  RHBasicsViewController.h
//  FirstDayDemo
//
//  Created by David Fisher on 9/4/13.
//  Copyright (c) 2013 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RHBasicsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *countLabel;

- (IBAction)countUpPressed:(id)sender;
- (IBAction)countDownPressed:(id)sender;

@end
