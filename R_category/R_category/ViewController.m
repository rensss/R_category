//
//  ViewController.m
//  R_category
//
//  Created by rzk on 2017/9/26.
//  Copyright © 2017年 rzk. All rights reserved.
//

#import "ViewController.h"
#import "R_categorys.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    newView.centerX = self.view.width / 2;
    newView.backgroundColor = [UIColor colorWithRandom];
    [self.view addSubview:newView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
