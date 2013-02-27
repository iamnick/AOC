//
//  ViewController.m
//  AOC4
//
//  Created by Nick Stelzer on 2/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	// Login Area
    
    // Username Label
    UILabel *usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 90.0f, 20.0f)];
    if (usernameLabel != nil) {
    	usernameLabel.text = @"Username:";
        usernameLabel.textAlignment = NSTextAlignmentRight;
        [self.view addSubview:usernameLabel];
    }
    
    // Login Text Field
    UITextField *usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    if (usernameTextField != nil) {
    	usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameTextField];
    }
    
	// Login Button
	UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil) {
    	loginButton.frame = CGRectMake(230.0f, 45.0f, 80.0f, 30.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    	[self.view addSubview:loginButton];
    }
    
    // Login Message Label
    UILabel *loginMsgLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 85.0f, 320.0f, 60.0f)];
    if (loginMsgLabel != nil) {
    	loginMsgLabel.text = @"Please Enter Username";
        loginMsgLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:loginMsgLabel];
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
