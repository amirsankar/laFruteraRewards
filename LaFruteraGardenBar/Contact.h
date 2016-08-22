//
//  Contact.h
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/16/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"

@interface Contact : UIViewController
- (IBAction)callButton:(id)sender;
- (IBAction)facebookButton:(id)sender;
- (IBAction)yelpButton:(id)sender;
- (IBAction)mapButton:(id)sender;

@property (strong,nonatomic) WebViewController *webVC;


@end
