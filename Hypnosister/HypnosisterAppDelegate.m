#import "HypnosisterAppDelegate.h"
#import "PockethotlineView.h"

@implementation HypnosisterAppDelegate

@synthesize window=_window;

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Make a CGRect that is the size of the window
    CGRect wholeWindow = [[self window] bounds];
  
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:wholeWindow];
  
  
    [[self window] addSubview:scrollView];
    
    // Make your view twice as large as the window
    CGRect reallyBigRect;
    reallyBigRect.origin = CGPointZero;
    reallyBigRect.size.width = wholeWindow.size.width * 1.0;
    reallyBigRect.size.height = wholeWindow.size.height * 1.0;  
  
    [scrollView setContentSize:reallyBigRect.size];
    
    // Center it in the scroll view
  
  
    // Enable zooming
    [scrollView setMinimumZoomScale:1];
    [scrollView setMaximumZoomScale:1];
    [scrollView setDelegate:self];
  
    // Create the view
    view = [[PockethotlineView alloc] initWithFrame:reallyBigRect];
    [view setBackgroundColor:[UIColor clearColor]];
    [scrollView addSubview:view];
  
    [scrollView release];
  
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];

    [[self window] makeKeyAndVisible];
    return YES;
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return view;
}

// A dealloc method that will never get called because 
// HypnosisterAppDelegate will exist for the life of the application
- (void)dealloc
{
    [view release];
    [_window release];
    [super dealloc];
}

@end
