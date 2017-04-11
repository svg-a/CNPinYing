//
//  CNPingYing.m
//  CNPingYing
//
//  Created by MAC on 17/4/11.
//  Copyright © 2017年 dreamhot. All rights reserved.
//

#import "CNPinYing.h"
#import "CNPinYingModel.h"//自己的模型

@implementation CNPinYing

+ (NSMutableArray *)PinYingData:(NSMutableArray *)array
{
    NSMutableArray *ans = [[NSMutableArray alloc] init];
    NSArray *serializeArray = [array sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        NSString *strA = [self transform:((CNPinYingModel *)obj1).name];
        NSString *strB = [self transform:((CNPinYingModel *)obj2).name];
        if (NSOrderedDescending==[strA compare:strB])
        {
            return (NSComparisonResult)NSOrderedDescending;
        }
        if (NSOrderedAscending==[strA compare:strB])
        {
            return (NSComparisonResult)NSOrderedAscending;
        }
        return (NSComparisonResult)NSOrderedSame;
        
    }];
    
    char lastC = '1';
    NSMutableArray *data;
    NSMutableArray *oth = [[NSMutableArray alloc] init];
    for (CNPinYingModel *PinYing in serializeArray) {
        char c = [[self transform:PinYing.name]  characterAtIndex:0];
        
        if (!isalpha(c)) {
            [oth addObject:PinYing];
        }
        else if (c != lastC){
            lastC = c;
            if (data && data.count > 0) {
                [ans addObject:data];
            }
            
            data = [[NSMutableArray alloc] init];
            [data addObject:PinYing];
        }
        else {
            [data addObject:PinYing];
        }
    }
    if (data && data.count > 0) {
        [ans addObject:data];
    }
    if (oth.count > 0) {
        [ans addObject:oth];
    }
    
    return ans;

}

+ (NSMutableArray *)PinYingSection:(NSMutableArray *)array
{
    NSMutableArray *section = [[NSMutableArray alloc] init];
    
    for (NSArray *item in array) {
        CNPinYingModel *PinYing = [item objectAtIndex:0];
        char c = [[self transform:PinYing.name] characterAtIndex:0];
        
        if (!isalpha(c)) {
            c = '#';
        }
        [section addObject:[NSString stringWithFormat:@"%c", toupper(c)]];
    }
    return section;
}
+ (NSString *)transform:(NSString *)chinese
{
    NSMutableString *pinyin = [chinese mutableCopy];
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    return [pinyin uppercaseString];
}

@end
