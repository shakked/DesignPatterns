//
//  StereoOnWithCDCommand.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "StereoOnWithCDCommand.h"
#import "CommandRemote.h"

@implementation StereoOnWithCDCommand

- (instancetype)initWithStereo:(Stereo *)stereo
{
    self = [super init];
    if (self) {
        self.stereo = stereo;
    }
    return self;
}

- (void)execute
{
    [self.stereo on];
    [self.stereo setCd];
    [self.stereo setVolume];
}

- (void)undo
{
    [self.stereo off];
}
@end
