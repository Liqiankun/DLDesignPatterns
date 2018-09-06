//
//  DLCommandManager.h
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLCommand.h"

@interface DLCommandManager : NSObject

@property (nonatomic,strong) NSMutableArray <DLCommand *> *arrayCommands;

+(instancetype)shareManager;

-(void)executeCommand:(DLCommand *)command completion:(CommandCompletionCallBack)completion;

-(void)cancelCommand:(DLCommand *)command;

@end
