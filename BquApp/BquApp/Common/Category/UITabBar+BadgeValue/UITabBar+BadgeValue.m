//
//  UITabBar+BadgeValue.m
//  BquApp
//
//  Created by yb on 16/1/20.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "UITabBar+BadgeValue.h"

#define TabbarItemNums 5.0    //tabbar的数量 如果是5个设置为5.0

@implementation UITabBar (BadgeValue)
//显示角标
- (void)showBadgeOnItemIndex:(NSString *)value Index:(int)index
{
    
    //移除之前的小红点
    [self removeBadgeOnItemIndex:index];
    
    UILabel *badge = [[UILabel alloc]init];
    badge.tag = 101 + index;
    badge.layer.cornerRadius = 7.5;
    badge.backgroundColor = [UIColor whiteColor];
    badge.layer.borderWidth = 0.5;
    badge.clipsToBounds = YES;
    badge.layer.borderColor = [UIColor redColor].CGColor;
    badge.textColor = [UIColor redColor];
    badge.font = [UIFont systemFontOfSize:11];
    badge.text = value;
    badge.textAlignment = NSTextAlignmentCenter;
    CGRect tabFrame = self.frame;
    
    //小红点的位置
    float percentX = (index +0.6) / TabbarItemNums;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    CGFloat y = ceilf(0.1 * tabFrame.size.height);
    badge.frame = CGRectMake(x, y, 15, 15);
    [self addSubview:badge];
    
    
}
//隐藏角标
- (void)hideBadgeOnItemIndex:(int)index
{
     [self removeBadgeOnItemIndex:index];
}
//移除小红点
- (void)removeBadgeOnItemIndex:(int)index{
    //按照tag值进行移除
    for (UILabel *subView in self.subviews) {
        if (subView.tag == 101 +index) {
            [subView removeFromSuperview];
        }
    }
}
@end
