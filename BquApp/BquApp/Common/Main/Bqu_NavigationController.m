//
//  Bqu_NavigationController.m
//  BquApp
//
//  Created by yb on 16/1/13.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "Bqu_NavigationController.h"
#import <SloppySwiper.h>
@interface Bqu_NavigationController ()

@property (strong, nonatomic) SloppySwiper *swiper;


@end

@implementation Bqu_NavigationController
+(void)initialize
{
    [super initialize];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor grayColor],NSForegroundColorAttributeName,nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName,nil] forState:UIControlStateSelected];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //侧滑手势
    self.swiper = [[SloppySwiper alloc] initWithNavigationController:self];
    self.delegate = self.swiper;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
