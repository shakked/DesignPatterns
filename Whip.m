//
//  Whip.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Whip.h"

@implementation Whip

- (instancetype)initWithBeverage:(Beverage *)beverage
{
    self = [super init];
    
    if (self) {
        self.beverage = beverage;
    }
    return self;
}

- (NSString *)description
{
    return [self.beverage.description stringByAppendingString:@", Whip"];
}

- (float)cost
{
    return self.beverage.cost + .10;
}

@end
