//
//  GarageDoorOpenCommand.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandRemote.h"

@interface GarageDoorOpenCommand : Command

@property (nonatomic, strong) GarageDoor *garageDoor;
- (instancetype)initWithGarageDoor:(GarageDoor *)garageDoor;

@end
