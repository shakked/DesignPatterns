//
//  Command.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "Command.h"

@implementation Command

- (void)execute
{
    @throw [NSException exceptionWithName:@"Abstract method"
                                   reason:@"Must implement execute"
                                 userInfo:nil];
}


- (void)undo
{
    @throw [NSException exceptionWithName:@"Abstract method"
                                   reason:@"Must implement execute"
                                 userInfo:nil];
}

@end
