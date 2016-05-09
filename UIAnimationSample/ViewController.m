



#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myButton;

@end
#pragma mark - animation actions

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(IBAction)btMoveTo:(UIButton*)button {
    //_myButton.text  = @"Moving";
    
   // UIButton * button = (UIButton *)sender;
    
    [self.movingButton moveTo:CGPointMake(button.center.x +(self.movingButton.frame.size.width/2)- 30, button.frame.origin.y - (self.movingButton.frame.size.height/2 +20))
                     duration:1.0
                       option:0.0];
   //self.myButton.text = @"standing";
}
-(IBAction)btnDownUnder:(id)sender {
    
    // casting (id) sender into UIButton;
    UIButton *button = (UIButton*)sender;
    [button downUnder:1.0 option:0];
}
@end
