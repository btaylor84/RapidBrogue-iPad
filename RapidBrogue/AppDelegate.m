//
//  AppDelegate.m
//  iBrogue_iPad
//
//  Created by Seth Howard on 2/22/13.
//  Copyright (c) 2013 Seth howard. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIStoryboard *storyboard = nil;
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] ;
     if([[UIDevice currentDevice]userInterfaceIdiom]==UIUserInterfaceIdiomPhone) {
         storyboard = [UIStoryboard storyboardWithName:@"iPhone" bundle:nil];
     } else {
         storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     }
    
     [self.window setRootViewController:[storyboard instantiateInitialViewController]];
     [self.window makeKeyAndVisible];

    return YES;
}

@end
