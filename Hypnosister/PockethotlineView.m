#import <QuartzCore/QuartzCore.h>

#import "PockethotlineView.h"


@implementation PockethotlineView

@synthesize callButton = _callButton;


- (void)callButtonClicked:(UIGestureRecognizer *)recognizer {
  NSString *phoneNumber = @"8778174190";
  NSString *telString = [NSString stringWithFormat:@"tel://%@", phoneNumber];
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:telString]];
}


- (void)drawRect:(CGRect)rect
{
  
  // Start Button
  self.callButton = [UIButton buttonWithType:UIButtonTypeCustom];  
  self.callButton.frame = CGRectMake(62, 100, 195, 100); // position in the parent view and set the size of the button
  [self.callButton setTitle:@"CALL US!" forState:UIControlStateNormal];

  //Button Styling
  UIColor *buttonBackgroundColor = [UIColor redColor];
  
  UIFont *buttonFont = [UIFont fontWithName:@"Futura-CondensedExtraBold" size:36.0];  
  [self.callButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
  [self.callButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];

  self.callButton.backgroundColor = buttonBackgroundColor;
  self.callButton.layer.borderColor = buttonBackgroundColor.CGColor;
  self.callButton.layer.borderWidth = 0.5f;
  self.callButton.layer.cornerRadius = 10.0f;
  self.callButton.font = buttonFont;
  [self.callButton addTarget:self action:@selector(callButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
  
  self.callButton.titleLabel.hidden=NO;
  [self addSubview:self.callButton];
  
  
  
  [self.callButton setNeedsDisplay];
  
//  UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"/Users/schneems/Documents/projects/objective_c/pockethotline/Hypnosister/assets/railshotline.jpg"]];
  
  
  
  
  // What rectangle am I filling? 
  CGRect bounds = [self bounds];
  
  // Where is its center?
  CGPoint center;
  center.x = bounds.origin.x + bounds.size.width / 2.0;
  center.y = bounds.origin.x + bounds.size.height / 2.0;
  
  
}


@end
