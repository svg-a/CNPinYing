//
//  CNPingYingModel.m
//  CNPingYing
//
//  Created by MAC on 17/4/11.
//  Copyright © 2017年 dreamhot. All rights reserved.
//

#import "CNPinYingModel.h"

@implementation CNPinYingModel

+ (instancetype)initWithDict:(NSDictionary *)dict
{
    CNPinYingModel * PinYingModel = [[CNPinYingModel alloc]init];
    [PinYingModel setValuesForKeysWithDictionary:dict];
    return PinYingModel;
}


@end
