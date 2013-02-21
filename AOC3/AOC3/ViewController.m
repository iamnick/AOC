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
    // Call Append Function (Step 4)
    NSString *appendedStrings = [[NSString alloc] initWithString:[self appendStrings:@"string1" secondString:@"string2"]];
	UIAlertView *stringAlert = [[UIAlertView alloc] initWithTitle:@"Appended Strings" message:appendedStrings delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [stringAlert show];
    
    
    // Call Add & Display Alert Function (Step 6, 7, 8)
    NSNumber *result = [NSNumber numberWithInt:[self addInts:4 b:5]];
    NSString *stringResult = [[NSString alloc] initWithFormat:@"The number is %@", [result stringValue]];
    [self displayAlertWithString:stringResult];
    
    // Call Compare & Display Alert Function (Step 9)
    int intA = 4;
    int intB = 5;
	BOOL areTheyTheSame = [self compareInts:intA b:intB];
    NSString *compareResult = [[NSString alloc] init];
    if (areTheyTheSame == 1) {
    	compareResult = @"%d and %d are the same number.", intA, intB;
    } else {
    	compareResult = @"%d and %d are not the same number.", intA, intB;
    }
    [self displayAlertWithString:compareResult];

    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// Add Function (Step 1)
- (NSInteger)addInts:(NSInteger)a b:(NSInteger)b
{
	NSLog(@"%d+%d=%d", a ,b, (a+b));
    return (a+b);
}

// Compare Function (Step 2)
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

// Append Function (Step 3)
- (NSString*)appendStrings:(NSString*)firstString secondString:(NSString*)secondString
{
	
	NSMutableString *newString = [[NSMutableString alloc] init];
    [newString appendString:[NSString stringWithFormat:@"%@%@", firstString, secondString]];
	/*
    NSString *newString = [[NSString alloc] initWithFormat:@"%@%@", firstString, secondString];
    */
    NSLog(@"%@", newString);
    
    return newString;
}

// Display Alert Function (Step 5)
- (void)displayAlertWithString:(NSString*)displayString
{
	UIAlertView *displayAlert = [[UIAlertView alloc] initWithTitle:@"displayAlertWithString" message:displayString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[displayAlert show];
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
