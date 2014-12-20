//
//  CeilingFan.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "CeilingFan.h"

@implementation CeilingFan

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
    NSLog(@"CeilingFan: ON");
}

- (void)off
{
    NSLog(@"CeilingFan: OFF");
    self.speed = 0;
}

- (void)high
{
    NSLog(@"CeilingFan: HIGH");
    self.speed = 3;
}

- (void)medium
{
    NSLog(@"CeilingFan: MEDIUM");
    self.speed = 2;
}

- (void)low
{
    NSLog(@"CeilingFan: LOW");
    self.speed = 1;
}


@end
