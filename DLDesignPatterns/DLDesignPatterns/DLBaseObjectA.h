//
//  DLBaseObjectA.h
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DLBaseObjectB;

@interface DLBaseObjectA : NSObject

@property(nonatomic,strong) DLBaseObjectB *objB;

-(void)handle;

@end
