//
//  Mocha.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CondimentDecorator.h"
#import "Beverage.h"

@interface Mocha : CondimentDecorator

@property (nonatomic, strong) Beverage *beverage;
- (instancetype)initWithBeverage:(Beverage *)beverage;


@end
