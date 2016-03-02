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
#import <UIViewController+MMDrawerController.h>
@interface Bqu_HomeController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation Bqu_HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.tabBarController.tabBar showBadgeOnItemIndex:@"2" Index:0];
    
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_group_async(group, queue, ^{
//        [NSThread sleepForTimeInterval:1];
//        NSLog(@"group1");
//    });
//    dispatch_group_async(group, queue, ^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"group2");
//    });
//    dispatch_group_async(group, queue, ^{
//        [NSThread sleepForTimeInterval:3];
//        NSLog(@"group3");
//    });
//    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
//        NSLog(@"updateUi");
//    });  
//    dispatch_release(group);
    
    dispatch_queue_t queue = dispatch_queue_create("gcdtest.rongfzh.yc", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"dispatch_async1");
    });
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:4];
        NSLog(@"dispatch_async2");
    });
    dispatch_barrier_async(queue, ^{
        NSLog(@"dispatch_barrier_async");
        [NSThread sleepForTimeInterval:4];
        
    });
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:1];
        NSLog(@"dispatch_async3");  
    });
    
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(leftDrawerButtonPress:)];
    self.navigationItem.leftBarButtonItem = leftItem;
}
-(void)leftDrawerButtonPress:(id)sender
{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
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
