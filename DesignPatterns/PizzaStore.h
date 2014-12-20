//
//  PizzaStore.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PizzaDelegate.h"
@class SimplePizzaFactory;
@class Pizza;

@interface PizzaStore : NSObject

@property (nonatomic, strong) SimplePizzaFactory *factory;
- (instancetype)initWithFactory:(SimplePizzaFactory *)factory;
- (Pizza *)orderPizza:(NSString *)type;
- (Pizza *)createPizza:(NSString *)type;

@end
