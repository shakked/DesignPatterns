//
//  GumballMachine.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/20/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"


@interface GumballMachine : NSObject

@property (nonatomic, strong) id<State> state;
@property (nonatomic, strong) id<State> soldOutState;
@property (nonatomic, strong) id<State> noQuarterState;
@property (nonatomic, strong) id<State> hasQuarterState;
@property (nonatomic, strong) id<State> soldState;
@property (nonatomic, strong) id<State> winnerState;
@property (nonatomic) int count;

- (instancetype)initWithCount:(int)count;
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)releaseBall;
- (void)refill:(int)count;

@end
