



#import <UIKit/UIKit.h>

@interface UIView (Animation)
//// one way to creat method is that must not subclass and then add more method to subclasses.

-(void)moveTo : (CGPoint) destination duration :(float)secs option :(UIViewAnimationOptions) option;

-(void)downUnder:(float)secs option:(UIViewAnimationOptions)option;

- (void) addSubviewWithZoomInAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option;

- (void) removeWithZoomOutAnimation:(float)secs option:(UIViewAnimationOptions)option;

@end
