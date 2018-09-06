//
//  DLOperation.h
//  DLDesignPatterns
//
//  Created by David on 2018/9/5.
//  Copyright © 2018年 David. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DLOperation;

typedef void(^CompletionBlock)(BOOL handled);
typedef void(^ResultBlock)(DLOperation *handler, BOOL handled);

@interface DLOperation : NSObject

@property (nonatomic,strong) DLOperation *nextOperation;

-(void)handle:(ResultBlock)result;

-(void)handleOperation:(CompletionBlock)completion;

@end
