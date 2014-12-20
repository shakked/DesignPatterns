//
//  Stereo.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stereo : NSObject

- (instancetype)initWithRoom:(NSString *)room;
@property (nonatomic, strong) NSString *room;

- (void)on;
- (void)off;
- (void)setCd;
- (void)setDvd;
- (void)setRadio;
- (void)setVolume;

@end
