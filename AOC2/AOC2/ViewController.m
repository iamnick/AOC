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
        titleLabel.backgroundColor = [UIColor colorWithRed:0 green:0.4 blue:1 alpha:1]; /*#0066ff*/
        titleLabel.textColor = [UIColor colorWithRed:1 green:0.6 blue:0.2 alpha:1]; /*#ff9933*/
        titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    // Author Labels
    UILabel *authorLabelLeft = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 145.0f, 20.0f)];
    if (authorLabelLeft != nil) {
    	authorLabelLeft.text = @"Author:";
        authorLabelLeft.backgroundColor = [UIColor colorWithRed:0 green:0.2 blue:0.4 alpha:1]; /*#003366*/
        authorLabelLeft.textColor = [UIColor colorWithRed:0.4 green:0.6 blue:1 alpha:1]; /*#6699ff*/
        authorLabelLeft.textAlignment = NSTextAlignmentRight;
    }
    UILabel *authorLabelRight = [[UILabel alloc] initWithFrame:CGRectMake(165.0f, 40.0f, 145.0f, 20.0f)];
    if (authorLabelRight != nil) {
    	authorLabelRight.text = @"S.E. Hinton";
        authorLabelRight.backgroundColor = [UIColor colorWithRed:0.4 green:0.4 blue:1 alpha:1]; /*#6666ff*/
        authorLabelRight.textColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.6 alpha:1]; /*#333399*/
        authorLabelRight.textAlignment = NSTextAlignmentLeft;
    }
    
    // Publisher Labels
    UILabel *pubLabelLeft = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 145.0f, 20.0f)];
    if (pubLabelLeft != nil) {
    	pubLabelLeft.text = @"Published:";
        pubLabelLeft.backgroundColor = [UIColor colorWithRed:0.8 green:0.6 blue:0 alpha:1]; /*#cc9900*/
        pubLabelLeft.textColor = [UIColor colorWithRed:1 green:0.8 blue:0.2 alpha:1]; /*#ffcc33*/
        pubLabelLeft.textAlignment = NSTextAlignmentRight;
    }
    UILabel *pubLabelRight = [[UILabel alloc] initWithFrame:CGRectMake(165.0f, 70.0f, 145.0f, 20.0f)];
    if (pubLabelRight != nil) {
    	pubLabelRight.text = @"1967";
        pubLabelRight.backgroundColor = [UIColor colorWithRed:1 green:0.4 blue:0.2 alpha:1]; /*#ff6633*/
        pubLabelRight.textColor = [UIColor colorWithRed:0.6 green:0.2 blue:0 alpha:1]; /*#993300*/
        pubLabelRight.textAlignment = NSTextAlignmentLeft;
    }
    
    // Summary Labels
    UILabel *summLabelTop = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 145.0f, 20.0f)];
    if (summLabelTop != nil) {
    	summLabelTop.text = @"Summary";
        summLabelTop.backgroundColor = [UIColor colorWithRed:0.4 green:0.8 blue:0 alpha:1]; /*#66cc00*/
        summLabelTop.textColor = [UIColor colorWithRed:0.4 green:0.4 blue:0 alpha:1]; /*#666600*/
        summLabelTop.textAlignment = NSTextAlignmentLeft;
    }
    UILabel *summLabelBot = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 300.0f, 80.0f)];
    if (summLabelBot != nil) {
    	summLabelBot.text = @"A story of 14-year old boy Ponyboy and his struggle with right and wrong in a society in which he is an outsider.";
        summLabelBot.backgroundColor = [UIColor colorWithRed:0 green:0.2 blue:0 alpha:1]; /*#003300*/
        summLabelBot.textColor = [UIColor colorWithRed:0.4 green:1 blue:0.6 alpha:1]; /*#66ff99*/
        summLabelBot.textAlignment = NSTextAlignmentCenter;
        summLabelBot.numberOfLines = 5;
    }
    
    // Array of items talked about in the book
    NSArray *bookTopics = [[NSArray alloc] initWithObjects:@"Gangs", @"Violence", @"Family Dysfunction", @"Church Fire", @"Gone With The Wind", nil];
    NSMutableString *topicList = [[NSMutableString alloc] init];
    for (int i=1; i<=[bookTopics count]; i++) {
        // Check for last item, append comma or and depending on which it is
        if (i == [bookTopics count]) {
        	[topicList appendString:[NSString stringWithFormat:@"and %@", [bookTopics objectAtIndex:i-1]]];
        } else {
        	[topicList appendString:[NSString stringWithFormat:@"%@, ", [bookTopics objectAtIndex:i-1]]];
        }
    }
    UILabel *topicsLabelTop = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 220.0f, 145.0f, 20.0f)];
    if (topicsLabelTop != nil) {
    	topicsLabelTop.text = @"List of items";
        topicsLabelTop.backgroundColor = [UIColor brownColor];
        topicsLabelTop.textColor = [UIColor purpleColor];
        topicsLabelTop.textAlignment = NSTextAlignmentLeft;
    }
    UILabel *topicsLabelBot = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 250.0f, 300.0f, 100.0f)];
    if (topicsLabelBot != nil) {
    	topicsLabelBot.text = topicList;
        topicsLabelBot.backgroundColor = [UIColor cyanColor];
        topicsLabelBot.textColor = [UIColor blackColor];
        topicsLabelBot.textAlignment = NSTextAlignmentCenter;
        topicsLabelBot.numberOfLines = 3;
    }
    
    // Add Labels to the View
    [self.view addSubview:titleLabel];
	[self.view addSubview:authorLabelLeft];
    [self.view addSubview:authorLabelRight];
    [self.view addSubview:pubLabelLeft];
    [self.view addSubview:pubLabelRight];
    [self.view addSubview:summLabelTop];
    [self.view addSubview:summLabelBot];
    [self.view addSubview:topicsLabelTop];
    [self.view addSubview:topicsLabelBot];
    
    
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
