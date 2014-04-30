//
//  FirstViewController.m
//  Sample Project
//
//  Created by John Nelmar on 4/29/14.
//  Copyright (c) 2014 Sample. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    BOOL didShowTut = [[NSUserDefaults standardUserDefaults] boolForKey:@"didShowTut"];
    
        //Uncomment this if you do not use the selector
        //SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    
    if (!didShowTut) //This is marked with a ! because userdefaults are set to NO initially
        {
            //if you want to show the screen first to keep from an awkward transition you can call a selector but make sure you disable any selectable items in the first controller (FirstController). This would allow you to set animation to YES if you wanted to without the awkwardness.
        
            [self performSelector:@selector(presentController)
                 withObject:nil
                 afterDelay:1.0];
        
            //Otherwise erase the other code and use this by itself
            //[self presentViewController:secondViewController animated:NO completion:nil];
        
        NSLog(@"Presenting Tutorial");
        }
}

    //This would be the selector method from above. Erase if you do not use the selector.

 - (void)presentController
 {
 SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
 
 [self presentViewController:secondViewController animated:YES completion:nil];
 }

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
