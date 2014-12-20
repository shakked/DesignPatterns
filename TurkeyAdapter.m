//
//  TurkeyAdapter.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "TurkeyAdapter.h"
#import "AdapterTurkey.h"
@implementation TurkeyAdapter

- (instancetype)initWithTurkey:(id<Turkey>)turkey
{
    self = [super init];
    if (self) {
        self.turkey = turkey;
    }
    return self;
}

- (void)quack
{
    [self.turkey gobble];
}

- (void)fly
{
    for (int i = 0; i < 5; i++) {
        [self.turkey fly];
    }
}

@end
