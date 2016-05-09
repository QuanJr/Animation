
//  ViewController.h
//  UIAnimationSample
//  Created by QuanKul on 5/9/16.
//  Copyright © 2016 QuanKul. All rights reserved.


#import <UIKit/UIKit.h>
#import "UIView+Animation.h"

@interface ViewController : UIViewController
// declare a button;
@property (nonatomic ,weak) IBOutlet UIButton * movingButton;

-(IBAction)btMoveTo:(id)sender;
-(IBAction) btnDownUnder:(id)sender;

@end
//1. category.
//2. animate with duration.
//3. creat subclass.
//4. creat other view and creat custom class method.



