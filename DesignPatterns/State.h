//
//  State.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/20/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol State <NSObject>

- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)dispense;

@end
