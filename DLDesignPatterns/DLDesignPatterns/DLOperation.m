//
//  DLOperation.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/5.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DLOperation.h"

@implementation DLOperation

-(void)handle:(ResultBlock)result {
    CompletionBlock completion =  ^(BOOL handled) {
        if (handled && !self.nextOperation) {
            if (result) {
                result(self, handled);
            }
        } else {
            if (self.nextOperation) {
                [self.nextOperation handle:result];
            } else {
                result(nil, NO);
            }
        }
    };
    
    [self handleOperation:completion];
}

-(void)handleOperation:(CompletionBlock)completion {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (completion) {
            completion(YES);
        }
    });
}

@end
