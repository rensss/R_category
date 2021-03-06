//
//  ViewController.m
//  R_category
//
//  Created by rzk on 2017/9/26.
//  Copyright © 2017年 rzk. All rights reserved.
//

#import "ViewController.h"
#import "R_TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *image = [[UIImageView alloc] initWithFrame:self.view.bounds];
    image.hidden = YES;
    image.tag = 1000;
//    image.image = [UIImage getTheLaunchImage];
    [self.view addSubview:image];
    
    UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    newView.centerX = self.view.width / 2;
    newView.backgroundColor = [UIColor colorWithRandom];
    [self.view addSubview:newView];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    button.center = CGPointMake(newView.width/2, newView.height/2);
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    [button setTitle:@"显示/隐藏底图" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [newView addSubview:button];
    
    UIButton *guideBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 35)];
    guideBtn.y = newView.maxY + 30;
    guideBtn.centerX = newView.centerX;
    [guideBtn setTitle:@"跳转" forState:UIControlStateNormal];
    [guideBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [guideBtn addTarget:self action:@selector(guideClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:guideBtn];
}

#pragma mark - 点击事件
- (void)buttonClick:(UIButton *)button {
    UIImageView *imageView = (UIImageView *)[self.view viewWithTag:1000];
    imageView.hidden = !imageView.hidden;
}

- (void)guideClick {
    R_TableViewController *tableViewVC = [[R_TableViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tableViewVC];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
