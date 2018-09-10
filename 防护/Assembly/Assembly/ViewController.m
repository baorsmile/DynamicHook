//
//  ViewController.m
//  Assembly
//
//  Created by dabao on 2018/9/4.
//  Copyright © 2018年 dabao. All rights reserved.
//

#import "ViewController.h"
#import <sys/syscall.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    exit(0);
    asm(
        "mov X0,#0\n"
        "mov w16,#1\n"
        "svc #0x80"
    );
}



@end
