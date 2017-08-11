//
//  MJLCustomNavigation.m
//  ForcedLandscape
//
//  Created by lyscds2017 on 2017/8/11.
//  Copyright © 2017年 miaojinliang. All rights reserved.
//

#import "MJLCustomNavigation.h"

@interface MJLCustomNavigation ()

@end

@implementation MJLCustomNavigation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
    return NO;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeRight;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeRight;
}

@end
