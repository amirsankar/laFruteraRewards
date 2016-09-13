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
    UIImage *backgroundImage = [UIImage imageNamed:@"lfBackround2.2.2"];
    UIImageView *backgroundImageView =  [[UIImageView alloc]initWithFrame:self.view.frame];
    backgroundImageView.image = backgroundImage;
    backgroundImageView.alpha  = 0.9;
    backgroundImageView.contentMode = UIViewContentModeScaleToFill;
    [self.view insertSubview:backgroundImageView atIndex:0];
    self.secondImageView.hidden = YES;
//    [self.view addSubview:backgroundImageView];
    
    
    self.foodImageItems = [[NSArray alloc]initWithObjects:@"CV1", @"CV8", @"CV3", @"CV4", @"CV5", @"CV2", @"CV18", @"CV10", @"CV11", @"CV12", @"CV13", @"CV17", @"CV14", @"CV15", @"CV16", nil];
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
    self.logoImage.hidden = YES;
    self.secondImageView.hidden = NO;
    self.secondImageView.image = [UIImage imageNamed:self.foodImageItems[indexPath.row]];


}

@end
