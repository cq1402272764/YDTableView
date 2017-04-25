//
//  YDBaseCell.m
//  YDTableView
//
//  Created by cq on 2017/4/20.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "YDBaseCell.h"
#import "YDBaseDataItemArrowItem.h"
#import "YDBaseDataItemSwitchItem.h"
#import "YDBaseDataItemLabelItem.h"

@interface YDBaseCell ()
@property (nonatomic, strong) UIImageView *arrowView;
@end

@implementation YDBaseCell

- (UIImageView *)arrowView{
    if (_arrowView == nil) {
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _arrowView;
}

- (UISwitch *)switchView{
    if (_switchView == nil) {
        _switchView = [[UISwitch alloc] init];
        [_switchView addTarget:self action:@selector(switchViewSelect:) forControlEvents:UIControlEventValueChanged];
    }
    return _switchView;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"YDBaseCell";
    YDBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[YDBaseCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

- (void)setItem:(YDBaseDataItemModel *)item{
    _item = item;
    if (item.YDBaseOptionCell) {
        item.YDBaseOptionCell();
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self addSubview:item.YDBaseOptionCell()];
    }else{
        [self setupData];
        [self setupRightContent];
    }
}

- (void)setupRightContent{
    if ([self.item isKindOfClass:[YDBaseDataItemArrowItem class]]) {
        self.accessoryView = self.arrowView;
    } else if ([self.item isKindOfClass:[YDBaseDataItemSwitchItem class]]) {
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    } else if ([self.item isKindOfClass:[YDBaseDataItemLabelItem class]]) {
        if (self.item.destView) {
            self.accessoryView = self.item.destView();
        }
    } else {
        self.accessoryView = nil;
    }
}

- (void)setupData{
    if (self.item.icon) {
        self.imageView.image = [UIImage imageNamed:self.item.icon];
    }
    self.textLabel.text = self.item.title;
    self.detailTextLabel.text = self.item.detailLabel;
}

- (void)switchViewSelect:(UISwitch *)switchSelect{
    if ([_delegate respondsToSelector:@selector(setUpBaseCellWithSwitchSelect:)]) {
        [_delegate setUpBaseCellWithSwitchSelect:self];
    }
}
@end
