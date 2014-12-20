//
//  SteamedMilk.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "SteamedMilk.h"

@implementation SteamedMilk

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
    return [self.beverage.description stringByAppendingString:@", Steamed Milk"];
}

- (float)cost
{
    return self.beverage.cost + .10;
}

@end
