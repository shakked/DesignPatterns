//
//  Light.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Light.h"

@implementation Light

- (instancetype)initWithRoom:(NSString *)room
{
    self = [super init];
    if (self) {
        self.room = room;
    }
    return self;
}

- (void)on
{
    NSLog(@"Light: ON");
}

- (void)off
{
    NSLog(@"Light: OFF");
}

@end
