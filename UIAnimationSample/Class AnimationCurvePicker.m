//
//  Class AnimationCurvePicker.m
//  UIAnimationSample
//
//  Created by QuanKul on 5/9/16.
//  Copyright © 2016 QuanKul. All rights reserved.
//

#import "Class AnimationCurvePicker.h"

@implementation Class_AnimationCurvePicker

+(id) newAnimationCurvePicker :(id)pickDelegate {
    
    UINib *nib = [UINib nibWithNibName:@"AnimationCurvePicker" bundle:nil];
    NSArray *nibArray = [nib instantiateWithOwner:self options:nil];
    
    Class_AnimationCurvePicker *me = [nibArray objectAtIndex: 0];
    me.animationList.delegate = pickDelegate;
    me.animationList.dataSource = pickDelegate;
    return me;
}

@end
