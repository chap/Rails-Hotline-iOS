#import <UIKit/UIKit.h>

// This is a forward declaration
@class PockethotlineView;

@interface PockethotlineAppDelegate : NSObject
    <UIApplicationDelegate, UIScrollViewDelegate> {
    PockethotlineView *view;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
