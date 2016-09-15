//
//  Menu.m
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/16/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import "Menu.h"

@interface Menu ()

@end

@implementation Menu

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *backgroundImage = [UIImage imageNamed:@"lfBackround2.2.2"];
    UIImageView *backgroundImageView =  [[UIImageView alloc]initWithFrame:self.view.frame];
    backgroundImageView.image = backgroundImage;
    backgroundImageView.alpha  = 0.9;
    backgroundImageView.contentMode = UIViewContentModeScaleToFill;
    [self.view insertSubview:backgroundImageView atIndex:0];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
