//
//  YDBaseDataItemLabelItem.h
//  YDTableView
//
//  Created by cq on 2017/4/21.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "YDBaseDataItemModel.h"

typedef UIView * (^destView)();
@interface YDBaseDataItemLabelItem : YDBaseDataItemModel
+ (instancetype)itemWithTitle:(NSString *)title destView:(destView)destView;
+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destView:(destView)destView;
@end
