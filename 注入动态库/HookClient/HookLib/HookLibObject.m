//
//  HookLibObject.m
//  HookLib
//
//  Created by dabao on 2018/8/31.
//  Copyright © 2018年 dabao. All rights reserved.
//

#import "HookLibObject.h"
#import <objc/message.h>
#import <UIKit/UIKit.h>

@implementation HookLibObject
+(void)load
{
    NSLog(@"HookLibObject load");
    /// Self
    Method oldMethod = class_getInstanceMethod(objc_getClass("ViewController"), @selector(didTapRedButton:));
    Method newMethod = class_getInstanceMethod(self, @selector(test1));
    method_exchangeImplementations(oldMethod, newMethod);
    
    
    /// Mobike
//    Method oldMethod = class_getInstanceMethod(objc_getClass("MBKManhattanViewController"), @selector(didTapUnlockButton:));
//    Method newMethod = class_getInstanceMethod(self, @selector(test2));
//    method_exchangeImplementations(oldMethod, newMethod);
}

//-(void)test1{  
//    NSLog(@"检测状态异常!不能注册!🍺🍺🍺🍺🍺");
//
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"这是我Hook的" message:@"这时候不能扫码了" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//
//    [alertView show];
//}

-(void)test2{
    NSLog(@"检测状态异常!不能注册!🍺🍺🍺🍺🍺");
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"这是我Hook的" message:@"这时候不能扫码了" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    
    [alertView show];
}
@end
