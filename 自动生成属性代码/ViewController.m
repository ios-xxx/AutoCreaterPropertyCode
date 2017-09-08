//
//  ViewController.m
//  自动生成属性代码
//
//  Created by hong chen on 2017/1/18.
//  Copyright © 2017年 hong chen. All rights reserved.
//

#import "ViewController.h"
#import "CSYAutoProperty.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
   NSDictionary * dd = @{
                         @"Num":[NSNumber numberWithInt:10],
                         @"Arr":@[@"A"],
                         @"Str":@"string",
                         @"Bool":[NSNumber numberWithBool:YES],
                         @"Dict":@{@"xxx":@"xxx"},
                         @"date":[NSDate date]
                         };
    
     [CSYAutoProperty DictionaryCreaterPropertyCode:dd];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
