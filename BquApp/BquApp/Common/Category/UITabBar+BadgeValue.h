//
//  UITabBar+BadgeValue.h
//  BquApp
//
//  Created by yb on 16/1/20.
//  Copyright © 2016年 yb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (BadgeValue)

//显示角标
- (void)showBadgeOnItemIndex:(NSString *)value Index:(int)index;

//隐藏角标
- (void)hideBadgeOnItemIndex:(int)index;

@end
