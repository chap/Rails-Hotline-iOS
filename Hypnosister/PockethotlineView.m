#import "PockethotlineView.h"


@implementation PockethotlineView

- (void)drawRect:(CGRect)rect
{
  // What rectangle am I filling? 
  CGRect bounds = [self bounds];
  
  // Where is its center?
  CGPoint center;
  center.x = bounds.origin.x + bounds.size.width / 2.0;
  center.y = bounds.origin.x + bounds.size.height / 2.0;
  
  // From the center how far out to a corner?

  
  // Create a string
  NSString *text = @"You are getting sleepy.";
  
  // Get a font to draw it in
  UIFont *font = [UIFont boldSystemFontOfSize:28];
  
  // Where am I going to draw it?
  CGRect textRect;
  textRect.size = [text sizeWithFont:font];
  textRect.origin.x = center.x - textRect.size.width / 2.0;
  textRect.origin.y = center.y - textRect.size.height / 2.0;
  
  // Set the fill color of the current context to black
  [[UIColor blackColor] setFill];
  
  // Set the shadow to be offset 4 points right, 3 points down,
  // dark gray and with a blur raidus of 2 points
  CGSize offset = CGSizeMake(4,3);
  CGColorRef color = [[UIColor darkGrayColor] CGColor];
//  CGContextSetShadowWithColor(context, offset, 2.0, color);
  
  // Draw the string
  [text drawInRect:textRect withFont:font];
  
}

@end
