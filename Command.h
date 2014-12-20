//
//  Command.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Command : NSObject

- (void)execute;
- (void)undo;

@end
