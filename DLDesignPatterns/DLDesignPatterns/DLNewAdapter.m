//
//  DLNewAdapter.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DLNewAdapter.h"
#import "DLAdapter.h"

@implementation DLNewAdapter

-(instancetype)init {
    if (self = [super init]) {
        self.adapter = [[DLAdapter alloc] init];
    }
    return self;
}

-(void)request {
    // code here
    [_adapter handle];
    // code here
}

@end
