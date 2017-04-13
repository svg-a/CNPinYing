//
//  CNPingYing.h
//  CNPingYing
//
//  Created by MAC on 17/4/11.
//  Copyright © 2017年 dreamhot. All rights reserved.
//  LOL（艾欧尼亚：ID：小时候喜欢喝奶）求带，我只是个黄铜的菜鸟，代码很简单，你们也可以自己扩展～，不懂的问我

#import <Foundation/Foundation.h>
#import "CNPinYingModel.h"//自己的模型

#define PinYingModel CNPinYingModel
#define PinYingName name

@interface CNPinYing : NSObject

//传一个数组,它可以是一个模型数组，也可以直接是个数组。这里用模型数组测试
+ (NSMutableArray *) PinYingData:(NSMutableArray *)array;
//传数组的返回值得到字母。
+ (NSMutableArray *) PinYingSection:(NSMutableArray *)array;


@end
