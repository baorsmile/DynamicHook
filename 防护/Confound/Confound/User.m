//
//  User.m
//  Confound
//
//  Created by dabao on 2018/9/4.
//  Copyright © 2018年 dabao. All rights reserved.
//

#import "User.h"

@implementation UserClass
- (BOOL)isVIPUser
{
    return YES;
}

- (void)sendMessage:(NSString *)message
{
    NSLog(@"message %@", message);
}
@end
