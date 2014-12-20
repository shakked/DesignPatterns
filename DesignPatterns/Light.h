//
//  Light.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandRemote.h"

@interface Light : NSObject

- (void)on;
- (void)off;

- (instancetype)initWithRoom:(NSString *)room;
@property (nonatomic, strong) NSString *room;


@end
