//
//  WeatherData.h
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/18/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@interface WeatherData : NSObject <Subject>

- (void)setTemperature:(float)t;
- (void)setHumidity:(float)h;
- (void)setPressure:(float)p;

- (void)configureWeatherData:(NSDictionary *)weatherData;
@end

