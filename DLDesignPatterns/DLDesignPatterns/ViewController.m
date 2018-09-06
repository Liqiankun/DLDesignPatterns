//
//  ViewController.m
//  DLDesignPatterns
//
//  Created by David on 2018/9/5.
//  Copyright © 2018年 David. All rights reserved.
//

#import "ViewController.h"
#import "DLOperation.h"
#import "DLBaseObjectA1.h"
#import "DLBaseObjectB2.h"
#import "DLNewAdapter.h"
#import "DLSingleton.h"
#import "DLCommandManager.h"
#import "DLDelegate.h"

@interface ViewController ()<DLDelegateDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)chainOfResponsibilityPattern:(id)sender {
    DLOperation *operationA = [[DLOperation alloc] init];
    DLOperation *operationB = [[DLOperation alloc] init];
    DLOperation *operationC = [[DLOperation alloc] init];
    operationA.nextOperation = operationB;
    operationB.nextOperation = operationC;
    
    [operationA handle:^(DLOperation *handler, BOOL handled) {
        NSLog(@"handlder - %@, handled - %d", handler, handled);
    }];
}

- (IBAction)bridge:(id)sender {
    /*
     A1 -> B1, B2,
     A2 -> B1, B2
     */
    DLBaseObjectA *objcA = [[DLBaseObjectA1 alloc] init];
    DLBaseObjectB *objcB = [[DLBaseObjectB2 alloc] init];
    objcA.objB = objcB;
    [objcA handle];
}

- (IBAction)adapter:(id)sender {
    DLNewAdapter *adapter = [[DLNewAdapter alloc] init];
    [adapter request];
}

- (IBAction)singleton:(id)sender {
    DLSingleton *one = [DLSingleton shareSingleton];
    DLSingleton *two = [one copy];
    DLSingleton *three = [DLSingleton allocWithZone:NULL];
    
    NSLog(@"\n one - %p\n two - %p\n three - %p\n", one, two, three);
}

- (IBAction)command:(id)sender {
    DLCommandManager *commandManager = [DLCommandManager shareManager];
    DLCommand *command = [[DLCommand alloc] init];
    [commandManager executeCommand:command completion:^(DLCommand *command) {
        NSLog(@"command - %p", command);
    }];
}

- (IBAction)delegate:(id)sender {
    DLDelegate *delegate = [[DLDelegate alloc] init];
    delegate.delegate = self;
    [delegate handle];
}

-(void)dlDelegateDidExecuteHandle:(DLDelegate *)dlDelegate {
    NSLog(@"dlDelegateDidExecuteHandle");
}


@end
