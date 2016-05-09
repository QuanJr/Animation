
//  UIView+Animation.m
//  UIAnimationSample

//  Created by QuanKul on 5/9/16.
//  Copyright © 2016 QuanKul. All rights reserved.

#import "UIView+Animation.h"

@implementation UIView (Animation)
// one way to creat method is that must not subclass and then add more method to subclasses.

-(void)moveTo:(CGPoint)destination duration:(float)secs option:(UIViewAnimationOptions)option {
    
    [UIView animateWithDuration:secs
                          delay:0.0
                        options:option
                     animations:^{
                         self.frame = CGRectMake(destination.x, destination.y, self.frame.size.width, self.frame.size.height);
                     }
                     completion:nil];
 
}

-(void)downUnder: (float) secs option:(UIViewAnimationOptions)option{
    [UIView animateWithDuration:secs
                          delay:0.0
                        options:option
                     animations:^{
                         self.transform = CGAffineTransformRotate(self.transform, M_PI);
                     }
                     completion:^(BOOL finished){
                         
                         //[self downUnder:secs option:option];
                     }];
}
- (void) addSubviewWithZoomInAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option{
    CGAffineTransform trans = CGAffineTransformScale(view.transform, 0.01, 0.01);
    view.transform =trans;
    [self addSubview:view];
    
    [UIView animateWithDuration:secs
                          delay:0.0
                        options:option
                     animations:^{
                         view.transform =CGAffineTransformScale(view.transform, 100.0, 100.0);
                         
                     }
                     completion:nil];
    
}

- (void) removeWithZoomOutAnimation:(float)secs option:(UIViewAnimationOptions)option
{
    [UIView animateWithDuration:secs
                          delay:0.0
                        options:option
                     animations:^{
                         self.transform = CGAffineTransformScale(self.transform, 0.01, 0.01);
                     }
                     completion:^(BOOL finished)
                    {
                        [self removeFromSuperview];
                    }];
}
@end
