//
//  Subject.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/17/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DisplayElement;

@protocol Subject <NSObject>

- (void)registerObserver:(DisplayElement *)observer;
- (void)removeObserver:(DisplayElement *)observer;
- (void)notifyObservers;

@end
