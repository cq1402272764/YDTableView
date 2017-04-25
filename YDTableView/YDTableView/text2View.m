//
//  text2View.m
//  YDTableView
//
//  Created by cq on 2017/4/25.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "text2View.h"

@implementation text2View

+ (text2View *)instanceTextView{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:@"text2View" owner:nil options:nil];
    return [nibView objectAtIndex:0];
}

@end
