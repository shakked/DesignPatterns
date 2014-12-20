//
//  WinnerState.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/20/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "WinnerState.h"

@implementation WinnerState


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
    NSLog(@"You can't insert another quarter!");
}

- (void)ejectQuarter
{
    NSLog(@"It's too late to eject your quarter!");
}

- (void)turnCrank
{
    NSLog(@"Turning the crank again won't do anything!");
}

- (void)dispense
{
    [self.gumballMachine releaseBall];
    if (self.gumballMachine.count == 0) {
        self.gumballMachine.state = self.gumballMachine.soldOutState;
    }else{
        [self.gumballMachine releaseBall];
        NSLog(@"You're a winner!!!!! Enjoy another gumball!");
        NSLog(@"Out of gumballs.");
        if (self.gumballMachine.count == 0) {
            self.gumballMachine.state = self.gumballMachine.soldOutState;
        }else{
            self.gumballMachine.state = self.gumballMachine.noQuarterState;
        }
    }
}

@end
