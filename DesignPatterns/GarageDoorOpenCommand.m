//
//  GarageDoorOpenCommand.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "GarageDoorOpenCommand.h"

@implementation GarageDoorOpenCommand

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
    [self.garageDoor open];
}

- (void)undo
{
    [self.garageDoor lightOff];
}
@end
