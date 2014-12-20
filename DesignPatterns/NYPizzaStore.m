//
//  NYPizzaFactory.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "NYPizzaStore.h"
#import "PepperoniPizza.h"
#import "PizzaIngredientFactory.h"
#import "NYPizzaIngredientFactory.h"

@implementation NYPizzaStore

- (Pizza *)createPizza:(NSString *)type
{
    PizzaIngredientFactory *ingredientFactory = [[NYPizzaIngredientFactory alloc] init];
    
    if ([type isEqualToString:@"pepperoni"]) {
        return [[PepperoniPizza alloc] initWithIngredientFactory:ingredientFactory];
    }else{
        return nil;
    }
}

@end
