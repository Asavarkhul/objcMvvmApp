//
//  AppDelegate.m
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 22/02/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import "AppDelegate.h"
#import "AppCoordinator.h"

@interface AppDelegate ()
@property (strong, nonatomic) AppCoordinator *coordinator;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.coordinator = [[AppCoordinator alloc] initWithAppDelegate:self];
    [self.coordinator start];

    return YES;
}

@end
