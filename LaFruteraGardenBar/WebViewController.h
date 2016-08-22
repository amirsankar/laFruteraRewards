//
//  WebViewController.h
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/17/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface WebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *webView;
@property (weak, nonatomic) NSString *urlString;
- (IBAction)backButton:(id)sender;

@end
