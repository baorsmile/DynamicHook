//
//  AntiModel.m
//  Anti
//
//  Created by dabao on 2018/9/2.
//  Copyright © 2018年 dabao. All rights reserved.
//

#import "AntiModel.h"
#import <objc/message.h>
#import "fishhook.h"

@implementation AntiModel
+ (void)load
{
    NSLog(@"anitModel--load");
//    Method old = class_getInstanceMethod(objc_getClass("ViewController"), @selector(didTapRedButton:));
//    Method new = class_getInstanceMethod(self, @selector(didTapHookRedButton:));
//    method_exchangeImplementations(old, new);
    
    //基本防护
    struct rebinding bd1;
    bd1.name = "method_exchangeImplementations";
    bd1.replacement = myExchange;
    bd1.replaced = (void *)&exchangeP;
    
//    struct rebinding bd2;
//    bd2.name = "method_getImplementation";
//    bd2.replacement = myExchange;
//    bd2.replaced = (void *)&getIMP;
//
//    struct rebinding bd3;
//    bd3.name = "method_setImplementation";
//    bd3.replacement = myExchange;
//    bd3.replaced = (void *)&setIMP;
//
//    struct rebinding rebindings[] = {bd1,bd2,bd3};
//    rebind_symbols(rebindings, 3);
    
    struct rebinding rebindings[] = {bd1};
    rebind_symbols(rebindings, 1);
}

//保存原来的交换函数
//IMP _Nonnull (*setIMP)(Method _Nonnull m, IMP _Nonnull imp);
//IMP _Nonnull (*getIMP)(Method _Nonnull m);
void (*exchangeP)(Method _Nonnull m1, Method _Nonnull m2);
//新的交换处理
void myExchange(Method _Nonnull m1, Method _Nonnull m2){
    NSLog(@"检测到HOOK!!");
    exit(0);
}

//- (void)didTapHookRedButton:(id)sender{
//    NSLog(@"原工程的HOOK");
//}
@end
