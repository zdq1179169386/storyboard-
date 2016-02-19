//
//  Bqu_PromotionCell.h
//  BquApp
//
//  Created by yb on 16/2/18.
//  Copyright © 2016年 yb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Bqu_PromotionCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UIProgressView *progress;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@end
