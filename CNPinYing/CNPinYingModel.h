//
//  CNPingYingModel.h
//  CNPingYing
//
//  Created by MAC on 17/4/11.
//  Copyright © 2017年 dreamhot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CNPinYingModel : NSObject
//例如这个是一个名字，这是需要我们排序的
@property(nonatomic , strong)NSString * name;

@property(nonatomic , strong)NSString * title;

@property(nonatomic , strong)NSString * headUrl;


+ (instancetype)initWithDict:(NSDictionary *)dict;
@end
