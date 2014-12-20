//
//  NYPIzzaIngredientFactory.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "NYPizzaIngredientFactory.h"
#import "Dough.h"
#import "Sauce.h"
#import "Cheese.h"
#import "ThinCrustDough.h"
#import "MarineraSauce.h"
#import "ReggianoCheese.h"

@implementation NYPizzaIngredientFactory

- (Dough *)createDough
{
    return [[ThinCrustDough alloc] init];
}

- (Sauce *)createSauce
{
    return [[MarineraSauce alloc] init];
}

- (Cheese *)createCheese
{
    return [[ReggianoCheese alloc] init];
}


@end
