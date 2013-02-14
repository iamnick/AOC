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
	// Title Label
	UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 20.0f)];
    if (titleLabel != nil) {
    	titleLabel.text = @"The Outsiders";
        titleLabel.textAlignment = UITextAlignmentCenter;
    }
    
    // Author Labels
    UILabel *authorLabelLeft = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 145.0f, 20.0f)];
    if (authorLabelLeft != nil) {
    	authorLabelLeft.text = @"Author:";
        authorLabelLeft.textAlignment = UITextAlignmentRight;
    }
    UILabel *authorLabelRight = [[UILabel alloc] initWithFrame:CGRectMake(165.0f, 40.0f, 145.0f, 20.0f)];
    if (authorLabelRight != nil) {
    	authorLabelRight.text = @"S.E. Hinton";
        authorLabelRight.textAlignment = UITextAlignmentLeft;
    }
    
    // Publisher Labels
    UILabel *pubLabelLeft = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 145.0f, 20.0f)];
    if (pubLabelLeft != nil) {
    	pubLabelLeft.text = @"Published:";
        pubLabelLeft.textAlignment = NSTextAlignmentRight;
    }
    UILabel *pubLabelRight = [[UILabel alloc] initWithFrame:CGRectMake(165.0f, 70.0f, 145.0f, 20.0f)];
    if (pubLabelRight != nil) {
    	pubLabelRight.text = @"1967";
        pubLabelRight.textAlignment = NSTextAlignmentLeft;
    }
    
    // Summary Labels
    
    // Add Labels to the View
    [self.view addSubview:titleLabel];
	[self.view addSubview:authorLabelLeft];
    [self.view addSubview:authorLabelRight];
    [self.view addSubview:pubLabelLeft];
    [self.view addSubview:pubLabelRight];
    
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
