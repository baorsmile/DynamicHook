//
//  User.h
//  Confound
//
//  Created by dabao on 2018/9/4.
//  Copyright © 2018年 dabao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserClass : NSObject
- (BOOL)isVIPUser;
- (void)sendMessage:(NSString *)message;
@end
