//
//  CSYAutoProperty.h
//  自动生成属性代码
//
//  Created by hong chen on 2017/9/8.
//  Copyright © 2017年 hong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSYAutoProperty : NSObject
/** 通过字典生成属性创建代码 */
+(void)DictionaryCreaterPropertyCode:(NSDictionary *)dict;
@end
