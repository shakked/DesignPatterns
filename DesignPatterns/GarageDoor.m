//
//  GarageDoor.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "GarageDoor.h"

@implementation GarageDoor

- (instancetype)initWithRoom:(NSString *)room
{
    self = [super init];
    if (self) {
        self.room = room;
    }
    return self;
}

- (void)open
{
    NSLog(@"GarageDoor: OPEN");
}

- (void)close
{
    NSLog(@"GarageDoor: CLOSE");
}

- (void)stop
{
    NSLog(@"GarageDoor: STOP");
}

- (void)lightOn
{
    NSLog(@"GarageDoor: LIGHT ON");
}

- (void)lightOff
{
    NSLog(@"GarageDoor: LIGHT OFF");
}

@end
