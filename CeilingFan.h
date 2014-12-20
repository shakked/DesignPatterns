//
//  CeilingFan.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CeilingFan : NSObject

@property (nonatomic, strong) NSString *room;
@property (nonatomic) NSInteger speed;

- (void)on;
- (void)off;
- (void)high;
- (void)medium;
- (void)low;

- (instancetype)initWithRoom:(NSString *)room;
@end
