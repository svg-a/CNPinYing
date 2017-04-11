//
//  ViewController.m
//  CNPinYing
//
//  Created by MAC on 17/4/11.
//  Copyright © 2017年 dreamhot. All rights reserved.
//

#import "ViewController.h"
#import "CNPinYing.h"
#import "CNPinYingModel.h"
@interface ViewController ()
{
    NSArray * dataArray;
    NSArray * sectionArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray * arr = [NSMutableArray array];
    NSArray * array = @[@{@"name":@"啊啊aa",@"title":@"biaoti1",@"headUrl":@"https1"},
                        @{@"name":@"啵啵bb",@"title":@"biaoti2",@"headUrl":@"https2"},
                        @{@"name":@"发发ff",@"title":@"biaoti3",@"headUrl":@"https3"},
                        @{@"name":@"啦啦ll",@"title":@"biaoti4",@"headUrl":@"https4"},
                        @{@"name":@"他她tt",@"title":@"biaoti5",@"headUrl":@"https5"},
                        @{@"name":@"🐂###",@"title":@"biaoti6",@"headUrl":@"https6"},
                        @{@"name":@"㊙️mmm",@"title":@"biaoti6",@"headUrl":@"https7"}];
    
    for (NSDictionary * dict in array) {
        [arr addObject: [CNPinYingModel initWithDict:dict]];
    }
    //数据排列
    dataArray = [CNPinYing PinYingData:arr];
    NSLog(@"dataArray----%@",dataArray);
    //获得字母
    sectionArray = [CNPinYing PinYingSection:[dataArray mutableCopy]];
    NSLog(@"sectionArray----%@",sectionArray);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
