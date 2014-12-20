//
//  MacroCommand.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Command.h"
#import "CommandRemote.h"

@interface MacroCommand : Command

@property (nonatomic, strong) NSArray *commands;
- (instancetype)initWithCommands:(NSArray *)commands;

@end
