//
//  SoldOutState.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/20/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StateGumball.h"

@interface SoldOutState : NSObject<State>

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine;
@property (nonatomic, strong) GumballMachine *gumballMachine;

@end
