//
//  GarageDoor.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GarageDoor : NSObject

- (void)open;
- (void)close;
- (void)stop;
- (void)lightOn;
- (void)lightOff;
- (instancetype)initWithRoom:(NSString *)room;
@property (nonatomic, strong) NSString *room;

@end
