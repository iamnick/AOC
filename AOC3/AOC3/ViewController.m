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
    
    // Compare Function (BOOL)
    
    // Append Function
    
    // Display Alert Function
    
    // 
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
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
