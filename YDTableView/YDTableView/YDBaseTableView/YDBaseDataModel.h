//
//  YDBaseDataModel.h
//  YDTableView
//
//  Created by cq on 2017/4/20.
//  Copyright © 2017年 cq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YDBaseDataModel : NSObject
@property (nonatomic, copy) NSArray *items;
@property (nonatomic, copy) NSString *headerTitle;
@property (nonatomic, copy) NSString *footerTitle;
@property (nonatomic, assign) NSInteger headerHight;
@property (nonatomic, assign) NSInteger footerHight;
@property (nonatomic, strong)  id(^headerSectionView)();
@property (nonatomic, strong)  id(^footerSectionView)();
@end
