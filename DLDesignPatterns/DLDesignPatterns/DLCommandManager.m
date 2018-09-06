//
//  DLCommandManager.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DLCommandManager.h"

@implementation DLCommandManager

static DLCommandManager *commandManager = nil;

+(instancetype)shareManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        commandManager = [[self alloc] init];
    });
    return commandManager;
}


-(void)executeCommand:(DLCommand *)command completion:(CommandCompletionCallBack)completion {
    if (command) {
        if (![self dl_isExecutingCommand:command]) {
            [commandManager.arrayCommands addObject:command];
            command.completion = completion;
            [command execute];
        }
    }
}

-(void)cancelCommand:(DLCommand *)command {
    if (command) {
        [commandManager.arrayCommands removeObject:command];
        [command cancel];
    }
}

-(BOOL)dl_isExecutingCommand:(DLCommand *)command {
    if (command) {
        NSArray *commands = commandManager.arrayCommands;
        for (DLCommand *aCommand in commands) {
            if (command == aCommand) {
                return YES;
            }
        }
    }
    return NO;
}

@end
