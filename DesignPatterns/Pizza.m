//
//  Pizza.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithIngredientFactory:(PizzaIngredientFactory *)ingredientFactory
{
    self = [super init];
    if (self) {
        self.ingredientFactory = ingredientFactory;
    }
    return self;
}

- (void)prepare
{
    @throw [NSException exceptionWithName:@"Abstract"
                                   reason:@"[self prepare] must be subclassed"
                                 userInfo:nil];
}

- (void)bake
{
    
}

- (void)cut
{
    
}

- (void)box
{
    
}

@end
