//
//  PizzaIngredientFactory.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "PizzaIngredientFactory.h"

@implementation PizzaIngredientFactory

- (Dough *)createDough
{
    @throw [NSException exceptionWithName:@"Abstract"
                                   reason:@"[self createDough] must be subclassed"
                                 userInfo:nil];
}

- (Sauce *)createSauce
{
    @throw [NSException exceptionWithName:@"Abstract"
                                   reason:@"[self createSauce] must be subclassed"
                                 userInfo:nil];
}

- (Cheese *)createCheese
{
    @throw [NSException exceptionWithName:@"Abstract"
                                   reason:@"[self createCheese] must be subclassed"
                                 userInfo:nil];
}


@end
