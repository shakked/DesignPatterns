//
//  RemoteControl.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandRemote.h"

@interface RemoteControl : NSObject

@property (nonatomic, strong) NSMutableArray *onCommands;
@property (nonatomic, strong) NSMutableArray *offCommands;
@property (nonatomic, strong) Command *undoCommand;

- (void)setCommandwithSlot:(int)slot onCommand:(Command *)onCommand offCommand:(Command *)offCommand;
- (void)onButtonWasPushed:(int)slot;
- (void)offButtonWasPushed:(int)slot;
- (void)undoButtonWasPushed;

@end
