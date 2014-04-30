//
//  SecondViewController.m
//  Sample Project
//
//  Created by John Nelmar on 4/29/14.
//  Copyright (c) 2014 Sample. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[NSUserDefaults standardUserDefaults] setBool:YES
                                            forKey:@"didShowTut"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popController:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    NSLog(@"Dismissing Controller");
}

@end
