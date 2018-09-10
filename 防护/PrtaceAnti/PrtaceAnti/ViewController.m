//
//  ViewController.m
//  PrtaceAnti
//
//  Created by dabao on 2018/9/6.
//  Copyright © 2018年 dabao. All rights reserved.
//

#import "ViewController.h"
#import "MyPtraceHeader.h"
#import <sys/syscall.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     arg1:ptrace要做的事情
     arg2:要操作进程的ID
     arg3(地址)\arg4(数据): 取决于arg1
     */
    ptrace(PT_DENY_ATTACH, 0, 0, 0);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
