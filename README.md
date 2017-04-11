##CNPinYing

##对模型或者数组进行排序

##使用：

//得到一个数组或者字典

    NSMutableArray * arr = [NSMutableArray array];
    NSArray * array = @[@{@"name":@"啊啊aa",@"title":@"biaoti1",@"headUrl":@"https1"},
                        @{@"name":@"啵啵bb",@"title":@"biaoti2",@"headUrl":@"https2"},
                        @{@"name":@"发发ff",@"title":@"biaoti3",@"headUrl":@"https3"},
                        @{@"name":@"啦啦ll",@"title":@"biaoti4",@"headUrl":@"https4"},
                        @{@"name":@"他她tt",@"title":@"biaoti5",@"headUrl":@"https5"},
                        @{@"name":@"🐂###",@"title":@"biaoti6",@"headUrl":@"https6"},
                        @{@"name":@"㊙️mmm",@"title":@"biaoti6",@"headUrl":@"https7"}];


##转成模型，或者直接排序


     for (NSDictionary * dict in array) 
     {
       [arr addObject: [CNPinYingModel initWithDict:dict]];
     }
     
    //数据排列
    dataArray = [CNPinYing PinYingData:arr];
    
    //获得名字首字母大写  
    
    sectionArray = [CNPinYing PinYingSection:[dataArray mutableCopy]];
    
    
##模型中：.h

    #import <Foundation/Foundation.h>
    @interface CNPinYingModel : NSObject

    //例如这个是一个名字，这是需要我们排序的
    @property(nonatomic , strong)NSString * name;
    @property(nonatomic , strong)NSString * title;
    @property(nonatomic , strong)NSString * headUrl;
    + (instancetype)initWithDict:(NSDictionary *)dict;
    @end

.m

    + (instancetype)initWithDict:(NSDictionary *)dict
    {
     CNPinYingModel * PinYingModel = [[CNPinYingModel alloc]init];
    [PinYingModel setValuesForKeysWithDictionary:dict];
    return PinYingModel;
       }

##CNPinYing中需要把模型的名字传入

##菜鸟一枚，东西写的不好


