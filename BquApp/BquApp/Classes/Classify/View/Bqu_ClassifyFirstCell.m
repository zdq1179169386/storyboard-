//
//  Bqu_ClassifyFirstCell.m
//  BquApp
//
//  Created by yb on 16/4/8.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "Bqu_ClassifyFirstCell.h"

@interface Bqu_ClassifyFirstCell ()


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bluebtnx;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redbtnx;

@end

@implementation Bqu_ClassifyFirstCell

- (void)awakeFromNib {
    // Initialization code
    CGFloat  w = ([UIScreen mainScreen].bounds.size.width - 220)/3.0f;

    self.bluebtnx.constant = w;
    self.redbtnx.constant = w;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
