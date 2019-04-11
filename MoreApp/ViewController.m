//
//  ViewController.m
//  MoreApp
//
//  Created by wpf on 2019/3/27.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "ViewController.h"

#ifdef WANG_ON
#define MYREQURL @"http://www.baidu.com/111"

#elif PENG_ON
#define MYREQURL @"http://www.baidu.com/222"

#else
#define MYREQURL @"http://www.baidu.com/333"

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
    MYLog(@"定义宏文件:%@",MYREQURL);
    // Do any additional setup after loading the view.
}


@end
