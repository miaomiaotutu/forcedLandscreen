//
//  LandscapeViewController.m
//  ForcedLandscape
//
//  Created by lyscds2017 on 2017/8/11.
//  Copyright © 2017年 miaojinliang. All rights reserved.
//

#import "LandscapeViewController.h"
#import "Masonry.h"
@interface LandscapeViewController ()

@end

@implementation LandscapeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(dismiss)];
    self.title = @"竖屏下强制横屏（必须模态）";
    self.view.backgroundColor = [UIColor whiteColor];
    UITextView *greenView = [[UITextView alloc] init];
    greenView.backgroundColor = UIColor.greenColor;
    greenView.layer.borderColor = UIColor.blackColor.CGColor;
    greenView.layer.borderWidth = 2;
    [self.view addSubview:greenView];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = UIColor.redColor;
    redView.layer.borderColor = UIColor.blackColor.CGColor;
    redView.layer.borderWidth = 2;
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = UIColor.blueColor;
    blueView.layer.borderColor = UIColor.blackColor.CGColor;
    blueView.layer.borderWidth = 2;
    [self.view addSubview:blueView];    
    UIView *superview = self.view;
    CGFloat padding = 64.0;
    
    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.greaterThanOrEqualTo(superview.mas_top).offset(padding);
        make.left.equalTo(superview.mas_left).offset(padding);
        make.bottom.equalTo(blueView.mas_top).offset(-padding);
        make.right.equalTo(redView.mas_left).offset(-padding);
        make.width.equalTo(redView.mas_width);
        
        make.height.equalTo(redView.mas_height);
        make.height.equalTo(blueView.mas_height);
    }];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superview.mas_top).with.offset(padding);
        make.left.equalTo(greenView.mas_right).offset(padding);
        make.bottom.equalTo(blueView.mas_top).offset(-padding);
        make.right.equalTo(superview.mas_right).offset(-padding);
        make.width.equalTo(greenView.mas_width);
        
        make.height.equalTo(@[greenView, blueView]);
    }];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(greenView.mas_bottom).offset(padding);
        make.left.equalTo(superview.mas_left).offset(padding);
        make.bottom.equalTo(superview.mas_bottom).offset(-padding);
        make.right.equalTo(superview.mas_right).offset(-padding);
        
        make.height.equalTo(@[greenView.mas_height, redView.mas_height]);
    }];
}
- (void)dismiss
{
    [self dismissViewControllerAnimated:NO completion:^{
        
    }];
}
- (BOOL)prefersStatusBarHidden
{
    return NO;
}
@end
