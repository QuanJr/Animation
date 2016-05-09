//
//  Class AnimationCurvePicker.h
//  UIAnimationSample
//
//  Created by QuanKul on 5/9/16.
//  Copyright © 2016 QuanKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Class_AnimationCurvePicker : UIView
@property (nonatomic, weak) IBOutlet UITableView *animationList;

+(id) newAnimationCurvePicker :(id)pickDelegate;



@end
