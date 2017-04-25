//
//  YDBaseDataItemModel.m
//  YDTableView
//
//  Created by cq on 2017/4/20.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "YDBaseDataItemModel.h"

@implementation YDBaseDataItemModel

+ (instancetype)itemWithTitle:(NSString *)title{
    return [self itemWithIcon:nil title:title];
}

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title {
    YDBaseDataItemModel *item = [[self alloc] init];
    item.icon = icon;
    item.title = title;
    return item;
}

@end
