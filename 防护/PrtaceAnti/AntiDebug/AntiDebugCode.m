//
//  antiDebugCode.m
//  antiDebug
//
//  Created by H on 2018/6/9.
//  Copyright © 2018年 H. All rights reserved.
//

#import "AntiDebugCode.h"
#import "MyPtraceHeader.h"

@implementation AntiDebugCode
+(void)load
{
    ptrace(PT_DENY_ATTACH, 0, 0, 0);
}


@end
