//
//  SimplePizzaFactory.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "PepperoniPizza.h"

@implementation SimplePizzaFactory

- (Pizza *)createPizza:(NSString *)type
{
    Pizza *pizza = nil;
    if ([type isEqual:@"pepperoni"]) {
        pizza = [[PepperoniPizza alloc] init];
    }
    return pizza;
}

@end
