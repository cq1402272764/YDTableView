//
//  text1.m
//  YDTableView
//
//  Created by cq on 2017/4/24.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "text1.h"
#import "YDBaseTableView.h"


@interface text1 ()

@end

@implementation text1

- (void)groud{
    YDBaseDataItemModel *m1 = [YDBaseDataItemArrowItem itemWithTitle:@"item1"];
    YDBaseDataItemModel *m2 = [YDBaseDataItemArrowItem itemWithTitle:@"item2"];
    YDBaseDataItemModel *m3 = [YDBaseDataItemArrowItem itemWithTitle:@"item3"];
    YDBaseDataItemModel *m4 = [YDBaseDataItemArrowItem itemWithTitle:@"item4"];
    YDBaseDataItemModel *m5 = [YDBaseDataItemArrowItem itemWithTitle:@"item5"];
    YDBaseDataModel *dataModel = [[YDBaseDataModel alloc] init];
    dataModel.items = @[m1,m2,m3,m4,m5];
    [self.yd_data addObject:dataModel];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self groud];
}

@end
