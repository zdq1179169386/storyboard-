//
//  Bqu_NavigationController.m
//  BquApp
//
//  Created by yb on 16/1/13.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "Bqu_NavigationController.h"

@interface Bqu_NavigationController ()

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
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
