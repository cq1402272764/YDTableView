//
//  text1.m
//  YDTableView
//
//  Created by cq on 2017/4/24.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "text1.h"
#import "YDBaseTableView.h"
#import "text2.h"

@interface text1 ()

@end

@implementation text1


- (void)groud0{
    YDBaseDataItemModel *m1 = [YDBaseDataItemArrowItem itemWithIcon:@"" title:@"item1" destVcClass:[text2 class]];
    YDBaseDataItemModel *m2 = [YDBaseDataItemArrowItem itemWithIcon:@"" title:@"item2" destVcClass:[text2 class]];
    YDBaseDataItemModel *m3 = [YDBaseDataItemArrowItem itemWithIcon:@"" title:@"item3" destVcClass:[text2 class]];
    YDBaseDataModel *dataModel = [[YDBaseDataModel alloc] init];
    dataModel.items = @[m1,m2,m3];
    [self.yd_data addObject:dataModel];
    dataModel.headerTitle = @"groud0";
}

- (void)groud1{
    YDBaseDataItemModel *m1 = [YDBaseDataItemLabelItem itemWithTitle:@"item4" destView:^UIView *{
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
        label.textAlignment = NSTextAlignmentRight;
        label.text = @"lable1";
        return label;
    }];
    YDBaseDataItemModel *m2 = [YDBaseDataItemSwitchItem itemWithTitle:@"item5"];
    m2.YDBaseOptionSwitch = ^(UISwitch  *optionSwitch) {
        NSLog(@"--------%d",optionSwitch.on);
    };
    YDBaseDataModel *dataModel = [[YDBaseDataModel alloc] init];
    dataModel.items = @[m1,m2];
    [self.yd_data addObject:dataModel];
    dataModel.headerTitle = @"groud1";
}

- (void)groud2{
    YDBaseDataItemModel *m = [YDBaseDataItemLabelItem itemWithTitle:@"item6" destView:^UIView *{
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
        label.textAlignment = NSTextAlignmentRight;
        label.text = @"lable";
        return label;
    }];
    m.optionSelect = ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"text1" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"点击取消");
        }]];
        [self presentViewController:alert animated:YES completion:nil];
    };
    YDBaseDataModel *dataModel = [[YDBaseDataModel alloc] init];
    dataModel.items = @[m];
    [self.yd_data addObject:dataModel];
    dataModel.headerTitle = @"groud2";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self groud0];
    [self groud1];
    [self groud2];
    self.title = @"text1";
}

@end
