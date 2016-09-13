//
//  WebViewController.m
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/17/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *view = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [view loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.urlString]]];
    [self.webView addSubview: view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
