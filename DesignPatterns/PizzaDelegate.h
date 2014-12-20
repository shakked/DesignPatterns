//
//  PizzaDelegate.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PizzaDelegate <NSObject>

- (void)prepare;
- (void)bake;
- (void)cut;
- (void)box;

@end
