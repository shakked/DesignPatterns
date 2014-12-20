//
//  CeilingFanOn.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "CeilingFanOn.h"

@implementation CeilingFanOn

- (instancetype)initWithCeilingFan:(CeilingFan *)ceilingFan
{
    self = [super init];
    if (self) {
        self.ceilingFan = ceilingFan;
    }
    return self;
}

- (void)execute
{
    [self.ceilingFan on];
}

- (void)undo
{
    [self.ceilingFan off];
}

@end
