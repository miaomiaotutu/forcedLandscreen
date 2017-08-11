//
//  FirstController.m
//  ForcedLandscape
//
//  Created by lyscds2017 on 2017/8/11.
//  Copyright © 2017年 miaojinliang. All rights reserved.
//

#import "FirstController.h"
#import "ThirdViewController.h"

@interface FirstController ()
- (IBAction)pushto:(UIButton *)sender;

@end

@implementation FirstController

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

- (IBAction)pushto:(UIButton *)sender {
    ThirdViewController *thVC = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil];
    thVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:thVC animated:YES];
}
@end
