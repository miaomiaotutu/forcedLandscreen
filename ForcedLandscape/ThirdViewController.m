//
//  ThirdViewController.m
//  ForcedLandscape
//
//  Created by lyscds2017 on 2017/8/11.
//  Copyright © 2017年 miaojinliang. All rights reserved.
//

#import "ThirdViewController.h"
#import "LandscapeViewController.h"
#import "MJLCustomNavigation.h"

@interface ThirdViewController ()
- (IBAction)landscape:(UIButton *)sender;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)landscape:(UIButton *)sender {
    LandscapeViewController *landVC = [[LandscapeViewController alloc]init];
    landVC.navgationVC = self.navigationController;
    MJLCustomNavigation *nav = [[MJLCustomNavigation alloc]initWithRootViewController:landVC];
    [self presentViewController:nav animated:NO completion:^{
        
    }];
}
@end
