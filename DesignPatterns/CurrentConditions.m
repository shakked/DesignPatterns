//
//  CurrentConditions.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "CurrentConditions.h"

@interface CurrentConditions ()

@property (nonatomic) float temperature;
@property (nonatomic) float humidity;
@property (nonatomic) float pressure;

@end

@implementation CurrentConditions

- (void)update:(NSDictionary *)weatherData
{
    self.temperature = [weatherData[@"temperature"] floatValue];
    self.humidity = [weatherData[@"humidity"] floatValue];
    self.pressure = [weatherData[@"pressure"] floatValue];
    NSLog(@"The current temperature is: %f", self.temperature);
    NSLog(@"The current humidity is: %f", self.humidity);
    NSLog(@"The current pressure is: %f", self.pressure);
    

}

@end
