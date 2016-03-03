//
//  Bqu_LeftDrawerSecondController.m
//  BquApp
//
//  Created by yb on 16/3/2.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "Bqu_LeftDrawerSecondController.h"
#import <UIViewController+MMDrawerController.h>
#import "Bqu_TabBarController.h"
@interface Bqu_LeftDrawerSecondController ()

@end

@implementation Bqu_LeftDrawerSecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.mm_drawerController setMaximumLeftDrawerWidth:[UIScreen mainScreen].bounds.size.width animated:NO completion:nil];

}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
//    [self.mm_drawerController setCenterViewController:[[Bqu_TabBarController alloc] init] withCloseAnimation:NO completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
