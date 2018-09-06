//
//  DLCommand.h
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DLCommand;

typedef void(^CommandCompletionCallBack)(DLCommand *command);

@interface DLCommand : NSObject

@property (nonatomic,copy) CommandCompletionCallBack completion;

-(void)execute;
-(void)cancel;
-(void)done;

@end
