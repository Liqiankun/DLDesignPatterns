//
//  BaseButton.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/6.
//  Copyright © 2018年 David. All rights reserved.
//

#import "BaseButton.h"

@implementation BaseButton

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.layer.borderWidth = 1.5;
        self.layer.cornerRadius = 17.0;
        self.layer.borderColor = self.titleLabel.textColor.CGColor;
    }
    return self;
}

@end
