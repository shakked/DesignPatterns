//
//  MacroCommand.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "MacroCommand.h"

@implementation MacroCommand

- (instancetype)initWithCommands:(NSArray *)commands
{
    self = [super init];
    if (self){
        self.commands = commands;
    }
    
    return self;
}

- (void)execute
{
    for (Command *command in self.commands) {
        [command execute];
    }
}

- (void)undo
{
    for (Command *command in self.commands) {
        [command undo];
    }
}

@end
