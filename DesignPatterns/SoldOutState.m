//
//  SoldOutState.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/20/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "SoldOutState.h"

@implementation SoldOutState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine
{
    self = [super init];
    if (self){
        self.gumballMachine = gumballMachine;
    }
    return self;
}

- (void)insertQuarter
{
    NSLog(@"You inserted a quarter");
    self.gumballMachine.state = self.gumballMachine.hasQuarterState;
}

- (void)ejectQuarter
{
    NSLog(@"You haven't inserted a quarter");
}

- (void)turnCrank
{
    NSLog(@"Your turned but there's no quarter");
}

- (void)dispense
{
    NSLog(@"You need to pay first");
}

@end
