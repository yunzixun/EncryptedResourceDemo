//
//  EncryptedResourceDemoViewController.m
//  EncryptedResourceDemo
//
//  Created by Robin Summerhill on 15/07/2010.
//  Copyright Aptogo Ltd 2010. All rights reserved.
//

#import "EncryptedResourceDemoViewController.h"
#import "NSURL+EncryptedFileURLProtocol.h"

@implementation EncryptedResourceDemoViewController

@synthesize webView;

- (void)dealloc {
    [webView release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    webView.scalesPageToFit = YES;
    
    NSString *indexPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"EncryptedResources"];
        
    NSURL *url = [NSURL encryptedFileURLWithPath:indexPath];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

@end
