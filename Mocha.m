//
//  Mocha.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Mocha.h"

@implementation Mocha

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
    return [self.beverage.description stringByAppendingString:@", Mocha"];
}

- (float)cost
{
    return self.beverage.cost + .20;
}

@end
