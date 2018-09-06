//
//  DLBaseObjectA1.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DLBaseObjectA1.h"
#import "DLBaseObjectB.h"

@implementation DLBaseObjectA1

-(void)handle {
    NSLog(@"DLBaseObjectA1");
    [self.objB fetchData];
}

@end
