//
//  YDBaseDataItemArrowItem.h
//  YDTableView
//
//  Created by cq on 2017/4/21.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "YDBaseDataItemModel.h"

@interface YDBaseDataItemArrowItem : YDBaseDataItemModel
@property (nonatomic, assign) Class destVcClass;
+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass;
+ (instancetype)itemWithTitle:(NSString *)title destVcClass:(Class)destVcClass;
@end

