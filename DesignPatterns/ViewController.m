//
//  ViewController.m
//  DesignPatterns
//
//  Created by Zachary Shakked on 12/17/14.
//  Copyright (c) 2014 Shakked Inc. All rights reserved.
//

#import "ViewController.h"
#import "ZSSDuck.h"
#import "FlyBehavior.h"
#import "FlyingWithWingsBehavior.h"
#import "WeatherData.h"
#import "CurrentConditions.h"
#import "Beverage.h"
#import "CondimentDecorator.h"
#import "Expresso.h"
#import "HouseBlend.h"
#import "DarkRoast.h"
#import "Decaf.h"
#import "Mocha.h"
#import "SteamedMilk.h"
#import "Soy.h"
#import "Whip.h"
#import "NYPizzaStore.h"
#import "PizzaStore.h"
#import "ChocolateBoiler.h"
#import "Command.h"
#import "CommandRemote.h"
#import "AdapterTurkey.h"
#import "StateGumball.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testGumballMachine];
}

#pragma mark - Strategy Pattern
- (void)testDuck
{
    ZSSDuck *Duck = [[ZSSDuck alloc] init];
    FlyingWithWingsBehavior *flysWithWingsBehavior = [[FlyingWithWingsBehavior alloc] init];
    Duck.FlyBehavior = flysWithWingsBehavior;
    
    [Duck.FlyBehavior fly];
    
}

#pragma mark - Observer Pattern
- (void)testWeather
{
    WeatherData *weatherData = [[WeatherData alloc] init];
    CurrentConditions *currentConditions = [[CurrentConditions alloc] init];
    [weatherData registerObserver:currentConditions];
    
    NSDictionary *data = @{@"temperature" : [NSNumber numberWithFloat:3.0],
                              @"humidity" : [NSNumber numberWithFloat:6.0],
                              @"pressure" : [NSNumber numberWithFloat:9.0]};
    [weatherData configureWeatherData:data];
    [weatherData notifyObservers];
    
    data = @{@"temperature" : [NSNumber numberWithFloat:6.0],
                @"humidity" : [NSNumber numberWithFloat:12.0],
                @"pressure" : [NSNumber numberWithFloat:18.0]};
    [weatherData configureWeatherData:data];
    [weatherData notifyObservers];
    
    
}

#pragma mark - Decorator Pattern
- (void)testStarbuzz
{
    Beverage *beverage = [[Expresso alloc] init];
    NSLog(@"%@ $%f", beverage.description, beverage.cost);
    
    Beverage *beverage2 = [[DarkRoast alloc] init];
    beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
    beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
    beverage2 = [[Whip alloc] initWithBeverage:beverage2];
    NSLog(@"%@ $%f", beverage2.description, beverage2.cost);
    
    Beverage *beverage3 = [[HouseBlend alloc] init];
    beverage3 = [[Soy alloc] initWithBeverage:beverage3];
    beverage3 = [[Mocha alloc] initWithBeverage:beverage3];
    beverage3 = [[Whip alloc] initWithBeverage:beverage3];
    NSLog(@"%@ $%f", beverage3.description, beverage3.cost);


    
}

#pragma mark - Factory Pattern
- (void)testPizza
{
    PizzaStore *nyPizzaStore = [[NYPizzaStore alloc] init];
    Pizza *pepperoni = [nyPizzaStore orderPizza:@"pepperoni"];
    
}

#pragma mark - Singleton Pattern
- (void)testChocolateBoiler
{
    ChocolateBoiler *boiler = [ChocolateBoiler sharedBoiler];
    [boiler fill];
    
    NSLog(@"'Making' another chocolate boiler");
    ChocolateBoiler *boiler2 = [ChocolateBoiler sharedBoiler];
    [boiler fill];
}

- (void)testRemote
{
    RemoteControl *remoteControl = [[RemoteControl alloc] init];
    Light *livingRoomLight = [[Light alloc] initWithRoom:@"Living Room"];
    Light *kitchenLight = [[Light alloc] initWithRoom:@"Kitchen"];
    CeilingFan *ceilingFan = [[CeilingFan alloc] initWithRoom:@"Living Room"];
    GarageDoor *garageDoor = [[GarageDoor alloc] initWithRoom:@""];
    Stereo *stereo = [[Stereo alloc] initWithRoom:@"Living Room"];
    
    LightOnCommand *livingRoomLightOn = [[LightOnCommand alloc] initWithLight:livingRoomLight];
    LightOffCommand *livingRoomLightOff = [[LightOffCommand alloc] initWithLight:livingRoomLight];
    LightOnCommand *kitchenLightOn = [[LightOnCommand alloc] initWithLight:kitchenLight];
    LightOffCommand *kitchenLightOff = [[LightOffCommand alloc] initWithLight:kitchenLight];
    
    CeilingFanHighCommand *ceilingFanHigh = [[CeilingFanHighCommand alloc] initWithCeilingFan:ceilingFan];
    CeilingFanMediumCommand *ceilingFanMedium = [[CeilingFanMediumCommand alloc] initWithCeilingFan:ceilingFan];
    CeilingFanLowCommand *ceilingFanLow = [[CeilingFanLowCommand alloc] initWithCeilingFan:ceilingFan];
    CeilingFanOff *ceilingFanOff = [[CeilingFanOff alloc] initWithCeilingFan:ceilingFan];
    
    GarageDoorOpenCommand *garageDoorOpen = [[GarageDoorOpenCommand alloc] initWithGarageDoor:garageDoor];
    GarageDoorCloseCommand *garageDoorClose = [[GarageDoorCloseCommand alloc] initWithGarageDoor:garageDoor];
    
    StereoOnWithCDCommand *stereoOnWithCd = [[StereoOnWithCDCommand alloc] initWithStereo:stereo];
    StereoOffCommand *stereoOffCommand = [[StereoOffCommand alloc] initWithStereo:stereo];

    //Initial Command Test
//    [remoteControl setCommandwithSlot:0 onCommand:livingRoomLightOn offCommand:livingRoomLightOff];
//    [remoteControl setCommandwithSlot:1 onCommand:kitchenLightOn offCommand:kitchenLightOff];
//    [remoteControl setCommandwithSlot:2 onCommand:ceilingFanMedium offCommand:ceilingFanOff];
//    [remoteControl setCommandwithSlot:3 onCommand:ceilingFanHigh offCommand:ceilingFanOff];
//    [remoteControl setCommandwithSlot:4 onCommand:stereoOnWithCd offCommand:stereoOffCommand];
//
//    [remoteControl onButtonWasPushed:0];
//    [remoteControl onButtonWasPushed:1];
//    [remoteControl onButtonWasPushed:2];
//    [remoteControl onButtonWasPushed:3];
//    
//    [remoteControl undoButtonWasPushed];
//    [remoteControl onButtonWasPushed:3];
//    [remoteControl onButtonWasPushed:4];
//    [remoteControl offButtonWasPushed:0];
//    [remoteControl offButtonWasPushed:1];
//    [remoteControl offButtonWasPushed:2];
//    [remoteControl undoButtonWasPushed];
//    [remoteControl offButtonWasPushed:3];
//    [remoteControl offButtonWasPushed:4];

    //Undo Test
//    [remoteControl setCommandwithSlot:0 onCommand:ceilingFanLow offCommand:ceilingFanOff];
//    [remoteControl setCommandwithSlot:1 onCommand:ceilingFanMedium offCommand:ceilingFanOff];
//    [remoteControl onButtonWasPushed:1];
//    [remoteControl offButtonWasPushed:1];
//    [remoteControl undoButtonWasPushed];
    
    //Macro Test
    MacroCommand *macroOn = [[MacroCommand alloc] initWithCommands:@[livingRoomLightOn, garageDoorOpen, ceilingFanHigh]];
    MacroCommand *macroOff = [[MacroCommand alloc] initWithCommands:@[livingRoomLightOff, garageDoorClose, ceilingFanOff]];
    
    [remoteControl setCommandwithSlot:0 onCommand:macroOn offCommand:macroOff];
    [remoteControl onButtonWasPushed:0];
    [remoteControl offButtonWasPushed:0];
    [remoteControl undoButtonWasPushed];

}

- (void)testBlock
{
    void (^hiBlock)() = ^void() {
        NSLog(@"Hi");
    };
    
    void (^byeBlock)() = ^void() {
        NSLog(@"Bye");
    };
    
    NSArray *blocks = @[hiBlock, byeBlock];
    ((void (^)(void))blocks[0])();
    
    
    
}

- (void)testTurkey
{
    SimpleMallardDuck *mallardDuck = [[SimpleMallardDuck alloc] init];
    WildTurkey *wildTurkey = [[WildTurkey alloc] init];
    NSLog(@"The turkey says: \n");
    [wildTurkey gobble];
    [wildTurkey fly];
    
    NSLog(@"The duck says: \n");
    [mallardDuck quack];
    [mallardDuck fly];
    
    NSLog(@"The duck(turkey) says: \n");
    TurkeyAdapter *turkeyAdapter = [[TurkeyAdapter alloc] initWithTurkey:wildTurkey];
    [turkeyAdapter quack];
    [turkeyAdapter fly];
}

- (void)testGumballMachine
{
    GumballMachine *gumballMachine = [[GumballMachine alloc] initWithCount:5];
    [gumballMachine insertQuarter];
    
    [gumballMachine turnCrank];
    
    NSLog(@"Gumballs left: %d", gumballMachine.count);
    [gumballMachine insertQuarter];
    [gumballMachine turnCrank];
    NSLog(@"Gumballs left: %d", gumballMachine.count);
    [gumballMachine insertQuarter];
    [gumballMachine turnCrank];
    NSLog(@"Gumballs left: %d", gumballMachine.count);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
