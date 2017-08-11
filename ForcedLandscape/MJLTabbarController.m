//
//  MJLTabbarController.m
//  ForcedLandscape
//
//  Created by lyscds2017 on 2017/8/11.
//  Copyright © 2017年 miaojinliang. All rights reserved.
//

#import "MJLTabbarController.h"
#import "FirstController.h"
#import "SecondController.h"
@interface MJLTabbarController ()

@end

@implementation MJLTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    FirstController *first = [[FirstController alloc]initWithNibName:@"FirstController" bundle:nil];
    first.title = @"首页";
    first.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[[UIImage imageNamed:@"tabbar_icon_media_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"tabbar_icon_media_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:first];
    
    SecondController *second = [[SecondController alloc]initWithNibName:@"SecondController" bundle:nil];
    second.title = @"我的";
    second.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[[UIImage imageNamed:@"tabbar_icon_me_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"tabbar_icon_me_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:second];
    
    self.viewControllers = @[nav1,nav2];

}
@end
