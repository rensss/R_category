//
//  R_TableViewController.m
//  R_category
//
//  Created by Rzk on 2019/5/13.
//  Copyright © 2019 rzk. All rights reserved.
//

#import "R_TableViewController.h"

@interface R_TableViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView; /**< 列表*/
@property (nonatomic, strong) NSMutableArray *dataArray; /**< 数据源*/

@end

@implementation R_TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(backClick:)];
    self.navigationItem.leftBarButtonItem = back;
    
//    UIBarButtonItem *edit = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(barItemClick:)];
//    self.navigationItem.rightBarButtonItem = edit;
    
    [self.view addSubview:self.tableView];
}

#pragma mark - 点击事件
- (void)backClick:(UIBarButtonItem *)item {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)barItemClick:(UIBarButtonItem *)item {
    if (self.tableView.editing) {
        [item setTitle:@"Done"];
    } else {
        [item setTitle:@"Edit"];
    }
}

#pragma mark - delegate
#pragma mark -- UITableViewDelegate
- (nullable NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewRowAction *delete = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
        [self.dataArray removeObjectAtIndex:indexPath.row];
        NSIndexPath *index = [NSIndexPath indexPathForRow:indexPath.row inSection:indexPath.section];
        [tableView deleteRowsAtIndexPaths:@[index] withRowAnimation:UITableViewRowAnimationFade];
    }];
    return @[delete];
}

//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    return YES;
//}

#pragma mark -- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    return cell;
}

#pragma mark - getting
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
    }
    return _dataArray;
}

@end
