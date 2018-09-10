//
//  ViewController.m
//  Anti
//
//  Created by dabao on 2018/9/2.
//  Copyright © 2018年 dabao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
+ (void)load
{
    NSLog(@"ViewController--load");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)didTapRedButton:(UIButton *)sender {
    NSLog(@"我点击的是红色按钮");
}

- (IBAction)didTapBlueButton:(UIButton *)sender {
    NSLog(@"我点击的是蓝色按钮");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
