//
//  FlyBehavior.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/17/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehaviorDelegate.h"

@interface FlyBehavior : NSObject <FlyBehaviorDelegate>

- (void)fly;

@end
