//
//  DLDelegate.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DLDelegate.h"

@implementation DLDelegate


-(void)handle {
    if (_delegate && [_delegate respondsToSelector: @selector(dlDelegateDidExecuteHandle:)]) {
        [_delegate dlDelegateDidExecuteHandle:self];
    }
}

@end
