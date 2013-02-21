//
//  ViewController.m
//  AOC3
//
//  Created by Nick Stelzer on 2/18/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	// Add Function
    [self addInts:4 b:5];
    
    // Compare Function (BOOL)
    [self compareInts:3 b:2];
    
    // Append Function
    
    // Display Alert Function
    
    // 
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// Add Function
- (int)addInts:(int)a b:(int)b
{
	NSLog(@"%d+%d=%d", a ,b, (a+b));
    return (a+b);
}

// Compare Function
- (BOOL)compareInts:(int)a b:(int)b
{
	BOOL same;
	if (a == b) {
    	same = YES;
    } else {
    	same = NO;
    }
	NSLog(@"%d and %d, %d", a, b, same);
    return same;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printDebugInfo:(NSString*)debugString numLines:(NSInteger)numLines
{
	NSLog(@"%@%d", debugString, numLines);
}

@end
