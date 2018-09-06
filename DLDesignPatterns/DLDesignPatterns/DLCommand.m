//
//  DLCommand.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DLCommand.h"

@implementation DLCommand

-(void)execute {
    NSLog(@"DLCommand execute");
    [self done];
}

-(void)cancel {
    self.completion = nil;
}

-(void)done {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (self->_completion) {
            self->_completion(self);
        }
        self->_completion = nil;
    });
}

@end
