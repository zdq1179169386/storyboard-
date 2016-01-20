//
//  Bqu_HomeController.m
//  BquApp
//
//  Created by yb on 16/1/14.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "Bqu_HomeController.h"
#import "Bqu_ClassifyController.h"
#import "UITabBar+BadgeValue.h"
@interface Bqu_HomeController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation Bqu_HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.tabBarController.tabBar showBadgeOnItemIndex:@"2" Index:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * ID = @"HomeFirstCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [UIScreen mainScreen].bounds.size.width * 0.7;
}
- (IBAction)goToClassify:(id)sender {
    
    //两个storyboard之间的跳转
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Classify" bundle:nil] ;
    Bqu_ClassifyController * vc = [sb instantiateViewControllerWithIdentifier:@"Bqu_ClassifyController"];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)scan:(id)sender {
    
     self.hidesBottomBarWhenPushed = YES;
//    [self performSegueWithIdentifier:@"goScan" sender:self];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self.tabBarController.tabBar hideBadgeOnItemIndex:0];

}


@end
