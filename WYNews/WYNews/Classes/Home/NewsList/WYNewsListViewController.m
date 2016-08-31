//
//  WYNewsListViewController.m
//  WYNews
//
//  Created by 大姚 on 16/8/31.
//  Copyright © 2016年 王姚. All rights reserved.
//

#import "WYNewsListViewController.h"
static NSString *cellId = @"cellId";
@interface WYNewsListViewController ()<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, weak) UITableView *tableView;

@end

@implementation WYNewsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

#pragma mark -UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text = @(indexPath.row).description;
    return cell;

}

#pragma mark -设置界面

- (void)setupUI {
    // 添加表格
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    
    [self.view addSubview: tv];
    
    // 自动布局
    [tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    [tv registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    
    tv.dataSource = self;
    tv.delegate = self;
    
    _tableView = tv;
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
