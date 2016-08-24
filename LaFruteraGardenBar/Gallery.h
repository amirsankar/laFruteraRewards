//
//  Gallery.h
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/16/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageCell.h"

@interface Gallery : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>

@property(strong, nonatomic) NSArray *foodImageItems;
@property (weak, nonatomic) IBOutlet UIImageView *logoImage;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;


@end
