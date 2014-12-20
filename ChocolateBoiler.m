//
//  ChocolateBoiler.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "ChocolateBoiler.h"

@interface ChocolateBoiler ()

@property (nonatomic) BOOL empty;
@property (nonatomic) BOOL boiled;

@end

@implementation ChocolateBoiler

+ (instancetype)sharedBoiler
{
    static ChocolateBoiler *boiler = nil;
    //Do I need to create a sharedStore?
    if (!boiler) {
        boiler = [[self alloc] initPrivate];
    }
    
    //    [model setCurrentLocalUser];
    
    return boiler;
}

- (instancetype)initPrivate
{
    self = [super init];
    
    if (self) {
        self.empty = YES;
        self.boiled = NO;
    }
    return self;
}

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use sharedBoiler"
                                 userInfo:nil];
}

- (void)fill
{
    if (self.empty) {
        self.empty = NO;
        self.boiled = NO;
        NSLog(@"Filling boiler with chocolate and milk!");
    }else{
        NSLog(@"Uh oh, the boiler is already filled!");
    }
}


@end
