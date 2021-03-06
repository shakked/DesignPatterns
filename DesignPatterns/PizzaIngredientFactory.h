//
//  PizzaIngredientFactory.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dough.h"
#import "Sauce.h"
#import "Cheese.h"
#import "ThinCrustDough.h"
#import "MarineraSauce.h"
#import "ReggianoCheese.h"

@interface PizzaIngredientFactory : NSObject

- (Dough *)createDough;
- (Sauce *)createSauce;
- (Cheese *)createCheese;

@end
