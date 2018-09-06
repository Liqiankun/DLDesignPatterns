//
//  DLSingleton.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DLSingleton.h"

@implementation DLSingleton
static DLSingleton *singleton = nil;
+(instancetype)shareSingleton {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[self alloc] init];
    });
    return singleton;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [super allocWithZone:zone];
    });
    return singleton;
}

-(id)copyWithZone:(NSZone *)zone {
    return singleton;
}

@end
