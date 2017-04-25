//
//  YDBaseCell.h
//  YDTableView
//
//  Created by cq on 2017/4/20.
//  Copyright © 2017年 cq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YDBaseDataItemModel.h"

@class YDBaseCell;
@protocol YDBaseCellDelegate <NSObject>
@optional
- (void)setUpBaseCellWithSwitchSelect:(YDBaseCell *)switchSelect;
@end
@interface YDBaseCell : UITableViewCell
@property (nonatomic, strong) UISwitch *switchView;
@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, strong) YDBaseDataItemModel *item;
@property (nonatomic, weak) id<YDBaseCellDelegate> delegate;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
