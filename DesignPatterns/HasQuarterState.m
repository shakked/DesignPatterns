//
//  HasQuarterState.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/20/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "HasQuarterState.h"

@implementation HasQuarterState

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
    NSLog(@"Quarter returned!");
    self.gumballMachine.state = self.gumballMachine.noQuarterState;
}

- (void)turnCrank
{
    NSLog(@"You turn the crank...");
    int random = arc4random() % 10;
    if (random == 0  && self.gumballMachine.count > 1) {
        
        self.gumballMachine.state = self.gumballMachine.winnerState;
    }else{
        
        self.gumballMachine.state = self.gumballMachine.soldState;
    }
}
- (void)dispense
{
    NSLog(@"No gumball dispensed.");
}

@end
