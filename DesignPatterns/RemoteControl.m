//
//  RemoteControl.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "RemoteControl.h"
#import "CommandRemote.h"

@implementation RemoteControl

- (instancetype)init
{
    self = [super init];
    if (self){
        NoCommand *noCommand = [[NoCommand alloc] init];
        self.onCommands = [[NSMutableArray alloc] init];
        self.offCommands = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < self.onCommands.count; i++){
            self.onCommands[i] = noCommand;
            self.offCommands[i] = noCommand;
        }
        self.undoCommand = noCommand;
    }
    return self;
}

- (void)setCommandwithSlot:(int)slot onCommand:(Command *)onCommand offCommand:(Command *)offCommand;
{
    self.onCommands[slot] = offCommand;
    self.offCommands[slot] = offCommand;
}

- (void)onButtonWasPushed:(int)slot
{
    [self.onCommands[slot] execute];
    self.undoCommand = self.onCommands[slot];
}

- (void)offButtonWasPushed:(int)slot
{
    [self.offCommands[slot] execute];
    self.undoCommand = self.offCommands[slot];
}

- (void)undoButtonWasPushed
{
    [self.undoCommand undo];
}

- (NSString *)description
{
    NSString *string = @"";

    for (int i = 0; i < self.onCommands.count; i++){
        string = [string stringByAppendingString:[NSString stringWithFormat:@"Slot %d - onCom: %@ offCom: %@",i,NSStringFromClass(self.onCommands[i]), NSStringFromClass(self.offCommands[i])]];
        string = [string stringByAppendingString:@"\n"];
    }
    return string;
}

@end
