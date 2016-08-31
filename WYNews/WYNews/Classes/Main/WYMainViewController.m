//
//  WYMainViewController.m
//  WYNews
//
//  Created by 大姚 on 16/8/13.
//  Copyright © 2016年 王姚. All rights reserved.
//

#import "WYMainViewController.h"

@interface WYMainViewController ()

@end

@implementation WYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildViewcontrollers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 添加所有子控制器 

- (void)addChildViewcontrollers {

    NSArray *array = @[
                       @{@"clsName": @"WYHomeViewController", @"title": @"新闻", @"imageName": @"news"},
                       @{@"clsName": @"UIViewController", @"title": @"阅读", @"imageName": @"reader"},
                       @{@"clsName": @"UIViewController", @"title": @"视频", @"imageName": @"media"},
                       @{@"clsName": @"UIViewController", @"title": @"话题", @"imageName": @"bar"},
                       @{@"clsName": @"UIViewController", @"title": @"我", @"imageName": @"me"},
                       ];
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for (NSDictionary *dict in array) {
        [arrayM addObject:[self addChildViewContollerWithDict:dict]];
    }
    self.viewControllers = arrayM;
}



#pragma mark - 添加一个控制器
- (UIViewController *)addChildViewContollerWithDict:(NSDictionary *)dict {
    
    NSString *clsName = dict[@"clsName"];
    
    Class cls = NSClassFromString(clsName);
    
    NSAssert(clsName != nil, @"类名错误");
    
    UIViewController *vc = [cls new];
    vc.title = dict[@"title"];
    
    NSString *imageName = [NSString stringWithFormat:@"tabbar_icon_%@_normal",dict[@"imageName"]];
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    NSString *imageNameHL = [NSString stringWithFormat:@"tabbar_icon_%@_highlight",dict[@"imageName"]];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:imageNameHL] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    return [[UINavigationController alloc] initWithRootViewController:vc];
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
