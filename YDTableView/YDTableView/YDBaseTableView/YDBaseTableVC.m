//
//  YDTableVC.m
//  YDTableView
//
//  Created by cq on 2017/4/20.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "YDBaseTableVC.h"
#import "YDBaseDataModel.h"
#import "YDBaseDataItemModel.h"
#import "YDBaseDataItemArrowItem.h"
#import "YDBaseDataItemSwitchItem.h"
#import "YDBaseCell.h"

@interface YDBaseTableVC ()<YDBaseCellDelegate>

@end

@implementation YDBaseTableVC

- (id)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (id)initWithStyle:(UITableViewStyle)style{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (NSMutableArray *)yd_data {
    if (_yd_data == nil) {
        _yd_data = [NSMutableArray array];
    }
    return _yd_data;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.yd_data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    YDBaseDataModel *dataModel = self.yd_data[section];
    return dataModel.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YDBaseCell *cell = [YDBaseCell cellWithTableView:tableView];
    YDBaseDataModel *dataModel = self.yd_data[indexPath.section];
    cell.item = dataModel.items[indexPath.row];
    cell.indexPath = indexPath;
    cell.delegate = self;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    YDBaseDataModel *group = self.yd_data[indexPath.section];
    YDBaseDataItemModel *item = group.items[indexPath.row];
    if (item.optionSelect) {
        item.optionSelect();
    } else if ([item isKindOfClass:[YDBaseDataItemArrowItem class]]) {
        YDBaseDataItemArrowItem *arrowItem = (YDBaseDataItemArrowItem *)item;
        if (arrowItem.destVcClass == nil) return;
        UIViewController *vc = [[arrowItem.destVcClass alloc] init];
        [self.navigationController pushViewController:vc  animated:YES];
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    YDBaseDataModel *group = self.yd_data[section];
    return group.headerTitle;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    YDBaseDataModel *group = self.yd_data[section];
    return group.footerTitle;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    YDBaseDataModel *group = self.yd_data[indexPath.section];
    YDBaseDataItemModel *item = group.items[indexPath.row];
    if (item.cellHigh) {
        return item.cellHigh;
    }else{
        return tableView.rowHeight;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    YDBaseDataModel *group = self.yd_data[section];
    if (group.footerHight) {
        return group.footerHight;
    }else{
        return tableView.sectionFooterHeight;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    YDBaseDataModel *group = self.yd_data[section];
    if (group.headerHight) {
        return group.headerHight;
    }else{
        return tableView.sectionHeaderHeight;
    }
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    YDBaseDataModel *group = self.yd_data[section];
    if (group.headerSectionView) {
        return group.headerSectionView();
    }else{
        return nil;
    }
}

- (UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    YDBaseDataModel *group = self.yd_data[section];
    if (group.footerSectionView) {
        return group.footerSectionView();
    }else{
        return nil;
    }
}

- (void)setUpBaseCellWithSwitchSelect:(YDBaseCell *)switchSelect{
    YDBaseDataModel *group = self.yd_data[switchSelect.indexPath.section];
    YDBaseDataItemModel *item = group.items[switchSelect.indexPath.row];
    if (item.YDBaseOptionSwitch) {
        item.YDBaseOptionSwitch(switchSelect.switchView);
    }
}

@end
