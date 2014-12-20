//
//  StereoOnWithCDCommand.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Command.h"
#import "CommandRemote.h"

@interface StereoOnWithCDCommand : Command

@property (nonatomic, strong) Stereo *stereo;
- (instancetype)initWithStereo:(Stereo *)stereo;

@end
