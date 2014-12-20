//
//  Stereo.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Stereo.h"

@implementation Stereo

- (instancetype)initWithRoom:(NSString *)room
{
    self = [super init];
    if (self) {
        self.room = room;
    }
    return self;
}

- (void)on
{
    NSLog(@"Stereo: ON");
}

- (void)off
{
    NSLog(@"Stereo: OFF");
}

- (void)setCd
{
    NSLog(@"Stereo: SET CD");
}

- (void)setDvd
{
    NSLog(@"Stereo: SET DVD");
}

- (void)setRadio
{
    NSLog(@"Stereo: SET RADIO");
}

- (void)setVolume
{
    NSLog(@"Stereo: SET VOLUME");
}

@end
