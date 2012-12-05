//
//  NZViewController.h
//  Nuzzel
//
//  Created by Brian Soule on 12/5/12.
//  Copyright (c) 2012 Nuzzel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NZViewController : UIViewController <UIWebViewDelegate>

@property IBOutlet UIWebView *webView;
@property IBOutlet UIActivityIndicatorView *activityIndicator;

@end
