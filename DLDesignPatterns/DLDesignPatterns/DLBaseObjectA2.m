//
//  DLBaseObjectA2.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DLBaseObjectA2.h"
#import "DLBaseObjectB.h"

@implementation DLBaseObjectA2

-(void)handle {
    NSLog(@"DLBaseObjectA2");
    [self.objB fetchData];
}

@end
