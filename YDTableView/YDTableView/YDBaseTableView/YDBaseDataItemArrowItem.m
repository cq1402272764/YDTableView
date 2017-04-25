//
//  YDBaseDataItemArrowItem.m
//  YDTableView
//
//  Created by cq on 2017/4/21.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "YDBaseDataItemArrowItem.h"

@implementation YDBaseDataItemArrowItem
+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass{
    YDBaseDataItemArrowItem *item = [self itemWithIcon:icon title:title];
    item.destVcClass = destVcClass;
    return item;
}

+ (instancetype)itemWithTitle:(NSString *)title destVcClass:(Class)destVcClass{
    return [self itemWithIcon:nil title:title destVcClass:destVcClass];
}
@end
