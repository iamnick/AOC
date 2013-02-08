//
//  AppDelegate.m
//  AOC1
//
//  Created by Nick Stelzer on 2/7/13 for AOC 1302
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Variables used in these small examples
    float frozenLemonadePrice = 2.25f;
    float cash = 20.50f;
    int lemonadesWeHave = 0;
    int varieties = 3;
    int people = 4;
    BOOL areWeThirsty = YES;
    
    // Casting float to an int, outputting both
    NSLog(@"A frozen lemonade costs about $%d, or $%.2f to be exact.", (int)frozenLemonadePrice, frozenLemonadePrice);
    
    // AND, OR comparison using float, int, and BOOL data types
    if ((areWeThirsty == YES) && (((lemonadesWeHave == 0) && (cash >= frozenLemonadePrice)) || (lemonadesWeHave > 0))) {
    	NSLog(@"We are thirsty, and have frozen lemonade already or enough money to buy some.");
    } else {
    	NSLog(@"We might not be thirsty, or we are but don't have any frozen lemonade already or enough money to buy any.");
    }
    
    // if, else if, else conditional
	if (cash >= (frozenLemonadePrice * 2)) {
    	NSLog(@"We have enough money to buy multiple frozen lemonades.");
    } else if (cash >= frozenLemonadePrice) {
    	NSLog(@"We have enough money for 1 frozen lemonade.");
    } else {
    	NSLog(@"We don't have enough money to buy any frozen lemonades.");
    }
    
    // single loop
    for (int i=0; i < lemonadesWeHave; i++) {
    	NSLog(@"We have a frozen lemonade.");
    }
    
    // nested loop
    for (int j=0; j < people; j++) {
    	NSLog(@"Lets buy 1 of each type of frozen lemonade for person number %d", j);
        for (int k=0; k < varieties; k++) {
        	NSLog(@"We bought variety %d for person number %d", k, j);
        }
    }
    
    // while loop that increments an int variable
    while (cash > frozenLemonadePrice) {
    	cash = cash - frozenLemonadePrice;
    	lemonadesWeHave++;
        NSLog(@"We bought a frozen lemonade, we now have %d of them.", lemonadesWeHave);
    }
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
