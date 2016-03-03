//
//  Bqu_ClassifyController.m
//  BquApp
//
//  Created by yb on 16/1/14.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "Bqu_ClassifyController.h"

@interface Bqu_ClassifyController ()

/** <#label#> */
@property(nonatomic,strong) UITableView * tabelView;

@end

@implementation Bqu_ClassifyController
+(void)initialize
{
    [super initialize];
    
    
}
-(UITableView *)tabelView
{
    if (!_tabelView) {
        _tabelView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tabelView.delegate = self;
        _tabelView.dataSource = self;
        [self.view addSubview:_tabelView];
    }
    return _tabelView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabelView;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * ID = @"<#cell#>";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:<#UITableViewCellStyleSubtitle#> reuseIdentifier:ID];
    }
    
    return cell;
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
