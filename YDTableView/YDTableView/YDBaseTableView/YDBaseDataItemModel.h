//
//  YDBaseDataItemModel.h
//  YDTableView
//
//  Created by cq on 2017/4/20.
//  Copyright © 2017年 cq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^YDBaseItemOption)();

@interface YDBaseDataItemModel : NSObject
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *detailLabel;
@property (nonatomic, assign) NSInteger cellHigh;
@property (nonatomic, copy) UIView * (^destView)();
@property (nonatomic, strong)  id (^YDBaseOptionCell)();
@property (nonatomic, strong) YDBaseItemOption optionSelect;
@property (nonatomic, strong) void (^YDBaseOptionSwitch)(id optionSwitch);

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;
+ (instancetype)itemWithTitle:(NSString *)title;

@end
