//
//  NZViewController.m
//  Nuzzel
//
//  Created by Brian Soule on 12/5/12.
//  Copyright (c) 2012 Nuzzel. All rights reserved.
//

#import "NZViewController.h"

@interface NZViewController ()

@end

@implementation NZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.webView.delegate = self;
    
    NSString *url = @"http://beta.nuzzel.com";
    NSURL *urlType = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlType];
    [self.webView loadRequest:request];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [self.activityIndicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityIndicator stopAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
