//
//  LightOffCommand.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "LightOffCommand.h"

@implementation LightOffCommand

- (instancetype)initWithLight:(Light *)light
{
    self = [super init];
    if (self) {
        self.light = light;
    }
    return self;
}

- (void)execute
{
    [self.light off];
}

- (void)undo
{
    [self.light on];
}

@end
