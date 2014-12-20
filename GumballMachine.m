//
//  GumballMachine.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/20/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "GumballMachine.h"
#import "StateGumball.h"

@implementation GumballMachine

- (instancetype)initWithCount:(int)count{
    self = [super init];
    if (self) {
        self.count = count;
        self.soldOutState = [[SoldOutState alloc] initWithGumballMachine:self];
        self.noQuarterState = [[NoQuarterState alloc] initWithGumballMachine:self];
        self.hasQuarterState = [[HasQuarterState alloc] initWithGumballMachine:self];
        self.soldState = [[SoldState alloc] initWithGumballMachine:self];
        self.winnerState = [[WinnerState alloc] initWithGumballMachine:self];
        
        if (self.count > 0) {
            self.state = self.noQuarterState;
        }else{
            self.state = self.soldOutState;
        }
        
    }
    return self;
}

- (void)insertQuarter
{
    [self.state insertQuarter];
    
}

- (void)ejectQuarter
{
    [self.state ejectQuarter];
    
}

- (void)turnCrank
{
    [self.state turnCrank];
    [self.state dispense];
}

- (void)releaseBall
{
    NSLog(@"A gumball comes rolling out the slot.");
    if (self.count != 0) {
        self.count -= 1;
    }
}

- (void)refill:(int)count
{
    self.count = count;
    self.state = self.noQuarterState;
}

@end
