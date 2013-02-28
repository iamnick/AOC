//
//  ViewController.m
//  AOC4
//
//  Created by Nick Stelzer on 2/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"

#define LOGIN_BUTTON 0
#define DATE_BUTTON 1
#define INFO_BUTTON 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // Username Label
    UILabel *usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 90.0f, 20.0f)];
    if (usernameLabel != nil) {
    	usernameLabel.text = @"Username:";
        usernameLabel.textAlignment = NSTextAlignmentRight;
        [self.view addSubview:usernameLabel];
    }
    
    // Username Text Field
    usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    if (usernameTextField != nil) {
    	usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameTextField];
    }
    
	// Login Button
	UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil) {
    	loginButton.frame = CGRectMake(230.0f, 45.0f, 80.0f, 30.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        loginButton.tag = LOGIN_BUTTON;
    	[loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    	[self.view addSubview:loginButton];
    }
    
    // Login Message Label
    loginMsgLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 85.0f, 320.0f, 60.0f)];
    if (loginMsgLabel != nil) {
    	loginMsgLabel.text = @"Please Enter Username";
        loginMsgLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:loginMsgLabel];
    }
    
    // Show Date Button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil) {
    	dateButton.frame = CGRectMake(110.0f, 200.0f, 100.0f, 40.0f);
        dateButton.tag = DATE_BUTTON;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    	[self.view addSubview:dateButton];
    }
    
    // Info Button 
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (infoButton != nil) {
    	infoButton.frame = CGRectMake(150.0f, 300.0f, 20.0f, 20.0f);
        infoButton.tag = INFO_BUTTON;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    
    // Info Label
    UILabel *infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 330.0f, 320.0f, 60.0f)];
    if (infoLabel != nil) {
    	[self.view addSubview:infoLabel];
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)button
{
	if (button.tag == LOGIN_BUTTON) {
    	NSString *username = [usernameTextField text];
        if (username.length == 0) {
        	loginMsgLabel.text = @"Username cannot be empty";
        } else {
        	NSString *loginMsg = [[NSString alloc] initWithFormat:@"User: %@ has been logged in", username];
        	loginMsgLabel.text = loginMsg;
        }
    } else if (button.tag = DATE_BUTTON) {
    	NSDate *currentDate = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil) {
        	[dateFormatter setDateFormat:@"MMMM dd, y - hh:mm:ss a zzzz"];
        }
        
        // Date Alert
        UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:[dateFormatter stringFromDate:currentDate] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        if (dateAlert != nil) {
        	[dateAlert show];
        }
    } else if (button.tag = INFO_BUTTON) {
    	
    }
	/*UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Popup" message:@"onClick function" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if (alertView != nil) {
    	[alertView show];
    }*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
