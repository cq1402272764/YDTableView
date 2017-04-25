//
//  YDBaseDataItemLabelItem.m
//  YDTableView
//
//  Created by cq on 2017/4/21.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "YDBaseDataItemLabelItem.h"



@implementation YDBaseDataItemLabelItem

+ (instancetype)itemWithTitle:(NSString *)title destView:(destView)destView{
    return [self itemWithIcon:nil title:title destView:destView];
}

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destView:(destView)destView{
    YDBaseDataItemLabelItem *item = [self itemWithIcon:icon title:title];
    item.destView = destView;
    return item;
}

@end
