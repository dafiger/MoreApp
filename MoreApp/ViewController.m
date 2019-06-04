//
//  ViewController.m
//  OCProjectDemo
//
//  Created by wangpf on 2019/6/3.
//  Copyright © 2019 dafiger. All rights reserved.
//

#import "ViewController.h"

#ifdef Target1_ON
#define HOSTURL @"http://www.xxx.com/aaa"
#elif Target2_ON
#define HOSTURL @"http://www.xxx.com/bbb"
#else
#define HOSTURL @"http://www.xxx.com/ccc"
#endif

#ifdef Pro_ON
#define MYREQURL @"http://www.baidu.com/111"

#elif Test_ON
#define MYREQURL @"http://www.baidu.com/222"

#elif UAT_ON
#define MYREQURL @"http://www.baidu.com/333"

#else
#define MYREQURL @"http://www.baidu.com/444"

#endif

#ifdef DEBUG
#define MYLog(format, ...) printf("\n日志：%s_第%d行：%s", \
__FILE__, __LINE__, \
[[NSString stringWithFormat:format, ##__VA_ARGS__] UTF8String])
#else
#define MYLog(format, ...)
#endif

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MYLog(@"定义宏文件:%@\n%@",HOSTURL,MYREQURL);
}


@end
