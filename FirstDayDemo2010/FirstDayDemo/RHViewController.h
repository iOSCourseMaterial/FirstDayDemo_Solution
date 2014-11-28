//
//  RHViewController.h
//  FirstDayDemo
//
//  Created by Jimmy Theis on 3/12/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RHViewController : UIViewController {
    @private
    int _counter;
}

@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) IBOutlet UIImageView *logo;

- (IBAction)buttonTap:(id)sender;

@end
