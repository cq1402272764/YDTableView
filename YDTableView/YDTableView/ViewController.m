//
//  ViewController.m
//  YDTableView
//
//  Created by cq on 2017/4/24.
//  Copyright © 2017年 cq. All rights reserved.
//

#import "ViewController.h"
#import "text1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    text1 *text = [[text1 alloc] init];
    [self.navigationController pushViewController:text animated:YES];
}

@end
