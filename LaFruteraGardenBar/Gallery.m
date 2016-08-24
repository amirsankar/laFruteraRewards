//
//  Gallery.m
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/16/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import "Gallery.h"

@interface Gallery ()

@end

@implementation Gallery

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *backgroundImage = [UIImage imageNamed:@"lgback2.png"];
    UIImageView *backgroundImageView =  [[UIImageView alloc]initWithFrame:self.view.frame];
    backgroundImageView.image = backgroundImage;
    backgroundImageView.alpha  = 0.9;
    backgroundImageView.contentMode = UIViewContentModeScaleToFill;
    [self.view insertSubview:backgroundImageView atIndex:0];
//    [self.view addSubview:backgroundImageView];
    
    
    self.foodImageItems = [[NSArray alloc]initWithObjects:@"CV1.png", @"CV2.png", @"CV3.png", @"CV4.png", @"CV5.png", @"CV6.png", @"CV8.jpg", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.foodImageItems.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    cell.imageView.image = [UIImage imageNamed:self.foodImageItems[indexPath.row]];
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
 self.logoImage.image = [UIImage imageNamed:self.foodImageItems[indexPath.row]];
    //programatically make the picture bigger
}

@end
