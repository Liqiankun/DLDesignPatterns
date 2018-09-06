//
//  DLDelegate.h
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DLDelegate;

@protocol DLDelegateDelegate <NSObject>

-(void)dlDelegateDidExecuteHandle:(DLDelegate*)dlDelegate;

@end

@interface DLDelegate : NSObject

@property(nonatomic,weak) id<DLDelegateDelegate> delegate;

-(void)handle;

@end
