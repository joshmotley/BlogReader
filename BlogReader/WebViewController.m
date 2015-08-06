//
//  DetailViewController.m
//  BlogReader
//
//  Created by Joshua Motley on 8/3/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import "WebViewController.h"



@interface WebViewController ()

@end

@implementation WebViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
 
            
        // Update the view.
        [self configureView];
}

- (void)configureView {
    // Update the user interface for the detail item.
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:self.blogPostUrl];
    [self.webView loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
