//
//  ViewController.m
//  AOC2
//
//  Created by Nick Stelzer on 2/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	self.view.backgroundColor = [UIColor darkGrayColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 200.0f, 20.0f)];
    if (label != nil) {
    	label.text = @"this is a UILabel";
        label.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:label];

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

@end
