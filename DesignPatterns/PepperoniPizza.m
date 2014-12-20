//
//  PepperoniPizza.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "PepperoniPizza.h"

@implementation PepperoniPizza

- (void)prepare
{
    NSLog(@"Preparing Pepperoni Pizza");
    NSLog(@"Adding pepperoni!");
    [self.ingredientFactory createDough];
    [self.ingredientFactory createSauce];
    [self.ingredientFactory createCheese];
    NSLog(@"Dough, cheese, and sauce have been made!");
}

- (void)bake
{
    NSLog(@"Baking Pepperoni Pizza");
}

- (void)cut
{
    NSLog(@"Cutting Pepperoni Pizza");
}

- (void)box
{
    NSLog(@"Boxing Pepperoni Pizza");
}
@end
