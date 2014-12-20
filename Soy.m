//
//  Soy.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Soy.h"

@implementation Soy

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
    return [self.beverage.description stringByAppendingString:@", Soy"];
}

- (float)cost
{
    return self.beverage.cost + .15;
}

@end
