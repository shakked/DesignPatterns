//
//  SoldState.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/20/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "SoldState.h"

@implementation SoldState

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
    NSLog(@"Please wait, we are already giving you a gumball.");
    self.gumballMachine.state = self.gumballMachine.hasQuarterState;
}

- (void)ejectQuarter
{
    NSLog(@"Sorry, you already turned the crank.");
}

- (void)turnCrank
{
    NSLog(@"Turning twice does not get you another gumball.");
}

- (void)dispense
{
    [self.gumballMachine releaseBall];
    if (self.gumballMachine.count > 0) {
        self.gumballMachine.state = self.gumballMachine.noQuarterState;
    }else{
        NSLog(@"Oops! We are out of gumballs!");
        self.gumballMachine.state = self.gumballMachine.soldOutState;
    }
}

@end
