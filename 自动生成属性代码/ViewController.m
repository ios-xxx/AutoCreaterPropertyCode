//
//  ViewController.m
//  自动生成属性代码
//
//  Created by hong chen on 2017/1/18.
//  Copyright © 2017年 hong chen. All rights reserved.
//

#import "ViewController.h"

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
                         @"Dict":@{@"xxx":@"xxx"}
                         };
    
     [self DictionaryCreaterPropertyCode:dd];
}


// 通过字典生成属性创建代码
-(void)DictionaryCreaterPropertyCode:(NSDictionary *)dict {

    //  遍历字典
    NSMutableString * propertys = [NSMutableString string];
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
         NSString * propertyStr;
        if ([obj isKindOfClass:[NSString class]]) {
            
            propertyStr = [NSString stringWithFormat:@"@property (strong,nonatomic) %@ * %@;",[key classForCoder],key];
            
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFBoolean")]) {
            
            propertyStr = [NSString stringWithFormat:@"@property (strong,nonatomic) Bool  %@;",key];
            
        }else if ([obj isKindOfClass:[NSNumber class]]){
            
            propertyStr = [NSString stringWithFormat:@"@property (strong,nonatomic) NSNumber * %@;",key];
            
            /*
            if ([@"__NSCFBoolean" isEqualToString: (NSString *)[obj class]]) {
              
                propertyStr = [NSString stringWithFormat:@"@property (strong,nonatomic) Bool  %@;",key];
            }
             */
            
        }else if ([obj isKindOfClass:[NSArray class]]){
            
            propertyStr = [NSString stringWithFormat:@"@property (strong,nonatomic) NSArray * %@;",key];
           
        }else if ([obj isKindOfClass:[NSDictionary class]]){
            
            propertyStr = [NSString stringWithFormat:@"@property (strong,nonatomic) NSDictionary * %@;",key];
        }
        NSLog(@"%@",[obj class]);
        
        //  拼接Code
        [propertys appendFormat:@"%@\n\n",propertyStr];
    }];
    NSLog(@"\n\n%@",propertys);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
