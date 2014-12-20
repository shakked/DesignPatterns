//
//  SimpleRemoteControl.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "SimpleRemoteControl.h"

@implementation SimpleRemoteControl

- (void)setCommand:(Command *)command
{
    self.slot = command;
}

- (void)buttonWasPressed
{
    [self.slot execute];
}

@end
