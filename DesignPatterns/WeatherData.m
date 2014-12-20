//
//  WeatherData.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "WeatherData.h"
#import "DisplayElement.h"

@interface WeatherData ()

@property (nonatomic, strong) NSMutableArray *observers;
@property (nonatomic) float temperature;
@property (nonatomic) float humidity;
@property (nonatomic) float pressure;

@end

@implementation WeatherData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.observers = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)registerObserver:(DisplayElement *)observer
{
    [self.observers addObject:observer];
}

- (void)removeObserver:(DisplayElement *)observer
{
    [self.observers removeObject:observer];
}

- (void)notifyObservers
{
    NSDictionary *weatherData = @{@"temperature" : [NSNumber numberWithFloat:self.temperature],
                              @"humidity" : [NSNumber numberWithFloat:self.humidity],
                              @"pressure" : [NSNumber numberWithFloat:self.pressure]};
    
    for (DisplayElement *observer in self.observers) {
        [observer update:weatherData];
    }
    
}

#pragma mark - Setter Methods

- (void)configureWeatherData:(NSDictionary *)weatherData
{
    self.temperature = [weatherData[@"temperature"] floatValue];
    self.humidity = [weatherData[@"humidity"] floatValue];
    self.pressure = [weatherData[@"pressure"] floatValue];
}

@end

