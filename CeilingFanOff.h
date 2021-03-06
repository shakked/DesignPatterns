//
//  CeilingFanOff.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Command.h"
#import "CommandRemote.h"

@interface CeilingFanOff : Command

- (instancetype)initWithCeilingFan:(CeilingFan *)ceilingFan;
@property (nonatomic, strong) CeilingFan *ceilingFan;
@property (nonatomic) int prevSpeed;
@property (nonatomic) id<NSObject> Command;

@end
