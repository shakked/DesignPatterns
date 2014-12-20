//
//  GarageDoorCloseCommand.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "GarageDoorCloseCommand.h"
#import "CommandRemote.h"

@implementation GarageDoorCloseCommand

- (instancetype)initWithGarageDoor:(GarageDoor *)garageDoor
{
    self = [super init];
    if (self) {
        self.garageDoor = garageDoor;
    }
    return self;
}

- (void)execute
{
    [self.garageDoor close];
}

- (void)undo
{
    [self.garageDoor open];
}
@end
