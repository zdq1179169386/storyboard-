//
//  Bqu_TabBarController.m
//  BquApp
//
//  Created by yb on 16/1/13.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "Bqu_TabBarController.h"

@interface Bqu_TabBarController ()

@end

@implementation Bqu_TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIStoryboard * HomeSB = [UIStoryboard storyboardWithName:@"Home" bundle:nil];
    UIStoryboard * ClassifySB = [UIStoryboard storyboardWithName:@"Classify" bundle:nil];
    UIStoryboard * PromotionSB = [UIStoryboard storyboardWithName:@"Promotion" bundle:nil];
    UIStoryboard * ShoppingCartSB = [UIStoryboard storyboardWithName:@"ShoppingCart" bundle:nil];
    UIStoryboard * UserCenterSB = [UIStoryboard storyboardWithName:@"UserCenter" bundle:nil];
    
    self.viewControllers = @[HomeSB.instantiateInitialViewController,
                           PromotionSB.instantiateInitialViewController,
                           ClassifySB.instantiateInitialViewController,
                           ShoppingCartSB.instantiateInitialViewController,
                           UserCenterSB.instantiateInitialViewController];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
