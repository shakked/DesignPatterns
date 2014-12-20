//
//  PizzaStore.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "PizzaStore.h"
#import "SimplePizzaFactory.h"
#import "Pizza.h"

@implementation PizzaStore

- (instancetype)initWithFactory:(SimplePizzaFactory *)factory
{
    self = [super init];
    
    if (self) {
        self.factory = factory;
    }
    
    return self;
}

- (Pizza *)orderPizza:(NSString *)type
{
    Pizza *pizza = [self createPizza:type];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

- (Pizza *)createPizza:(NSString *)type
{
    NSException *exception = [NSException exceptionWithName:@"Must be overidden"
                                                     reason:@"Abstract"
                                                   userInfo:nil];
    @throw exception;
}




@end
