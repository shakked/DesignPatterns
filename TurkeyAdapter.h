//
//  TurkeyAdapter.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/19/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdapterTurkey.h"
@interface TurkeyAdapter : NSObject<SimpleDuck>

@property (nonatomic, strong) id<Turkey> turkey;
- (instancetype)initWithTurkey:(id<Turkey>)turkey;

@end
