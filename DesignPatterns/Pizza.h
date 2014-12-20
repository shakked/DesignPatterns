//
//  Pizza.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PizzaDelegate.h"
#import "Sauce.h"
#import "Dough.h"
#import "Cheese.h"
#import "PizzaIngredientFactory.h"

@interface Pizza : NSObject <PizzaDelegate>

@property (nonatomic, strong) Dough *dough;
@property (nonatomic, strong) Sauce *sauce;
@property (nonatomic, strong) Cheese *cheese;

- (instancetype)initWithIngredientFactory:(PizzaIngredientFactory *)ingredientFactory;
@property (nonatomic, strong) PizzaIngredientFactory *ingredientFactory;

@end
