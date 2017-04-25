//
//  text2.m
//  YDTableView
//
//  Created by cq on 2017/4/25.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "text2.h"
#import "YDBaseTableView.h"
#import "text2View.h"

@interface text2 ()

@end

@implementation text2

- (void)groud{
    YDBaseDataItemModel *m1 = [[YDBaseDataItemModel alloc] init];
    m1.cellHigh = 80;
    m1.YDBaseOptionCell = ^id{
        text2View *view = [text2View instanceTextView];
        view.frame = CGRectMake(0, 0, self.view.bounds.size.width, 80);
        return view;
    };
    YDBaseDataItemModel *m2 = [YDBaseDataItemLabelItem itemWithTitle:@"item2" destView:^UIView *{
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
        label.textAlignment = NSTextAlignmentRight;
        label.text = @"lable";
        return label;
    }];
    YDBaseDataItemModel *m3 = [[YDBaseDataItemModel alloc] init];
    m3.cellHigh = 80;
    m3.YDBaseOptionCell = ^id{
        text2View *view = [text2View instanceTextView];
        view.frame = CGRectMake(0, 0, self.view.bounds.size.width, 80);
        return view;
    };
    YDBaseDataModel *dataModel = [[YDBaseDataModel alloc] init];
    dataModel.items = @[m1,m2,m3];
    [self.yd_data addObject:dataModel];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self groud];
    self.title = @"text2";
}

@end
