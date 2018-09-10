//
//  ViewController.m
//  Confound
//
//  Created by dabao on 2018/9/4.
//  Copyright © 2018年 dabao. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

static NSString * const kGAODEIKEY = @"WOSHIGAODEIKEY";

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

//采用^运算直接换算成结果.不会进入字符串常量区s
#define STRING_ENCRYPT_KEY 0xAC
static NSString * AES_KEY(){
    unsigned char key[] = {
        (STRING_ENCRYPT_KEY ^ 'W'),
        (STRING_ENCRYPT_KEY ^ 'O'),
        (STRING_ENCRYPT_KEY ^ 'S'),
        (STRING_ENCRYPT_KEY ^ 'H'),
        (STRING_ENCRYPT_KEY ^ 'I'),
        (STRING_ENCRYPT_KEY ^ 'G'),
        (STRING_ENCRYPT_KEY ^ 'A'),
        (STRING_ENCRYPT_KEY ^ 'O'),
        (STRING_ENCRYPT_KEY ^ 'D'),
        (STRING_ENCRYPT_KEY ^ 'E'),
        (STRING_ENCRYPT_KEY ^ 'I'),
        (STRING_ENCRYPT_KEY ^ 'K'),
        (STRING_ENCRYPT_KEY ^ 'E'),
        (STRING_ENCRYPT_KEY ^ 'Y'),
        (STRING_ENCRYPT_KEY ^ '\0')
    };
    unsigned char * p = key;
    while (((*p) ^=  STRING_ENCRYPT_KEY) != '\0') p++;

    return [NSString stringWithUTF8String:(const char *)key];
}

//static NSString * AES_KEY(){
//    unsigned char key[] = {
//        'W',
//        'O',
//        'S',
//        'H',
//        'I',
//        'G',
//        'A',
//        'O',
//        'D',
//        'E',
//        'I',
//        'K',
//        'E',
//        'Y',
//        '\0'
//    };
//    return [NSString stringWithUTF8String:(const char *)key];
//}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UserClass *user = [[UserClass alloc] init];
    if ([user isVIPUser]) {
        [user sendMessage:kGAODEIKEY];
    }
    else {
        NSLog(@"不是会员");
    }
}


@end
