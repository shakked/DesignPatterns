//
//  CeilingFanOff.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "CeilingFanOff.h"
#import "CommandRemote.h"

@implementation CeilingFanOff

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
    
    self.prevSpeed = self.ceilingFan.speed;
    [self.ceilingFan off];
}

- (void)undo
{
    if (self.prevSpeed == 3) {
        [self.ceilingFan high];
    }else if (self.prevSpeed == 2) {
        [self.ceilingFan medium];
    }else if (self.prevSpeed == 1) {
        [self.ceilingFan low];
    }else if (self.prevSpeed == 0) {
        [self.ceilingFan off];
    }

}

@end
