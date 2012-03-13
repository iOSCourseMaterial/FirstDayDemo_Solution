//
//  RHAppDelegate.h
//  FirstDayDemo
//
//  Created by Jimmy Theis on 3/12/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RHViewController;

@interface RHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) RHViewController *viewController;

@end
