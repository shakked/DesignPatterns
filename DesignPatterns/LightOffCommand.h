//
//  LightOffCommand.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandRemote.h"

@class Light;

@interface LightOffCommand : Command

@property (nonatomic, strong) Light *light;
- (instancetype)initWithLight:(Light *)light;

@end
