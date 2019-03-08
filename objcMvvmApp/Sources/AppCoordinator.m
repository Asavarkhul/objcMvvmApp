//
//  AppCoordinator.m
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 22/02/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import "AppCoordinator.h"
#import "HomeCoordinator.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppCoordinator ()
@property (nonatomic, strong) AppDelegate *appDelegate;
@property (nonatomic, strong) HomeCoordinator *coordinator;
@end

@implementation AppCoordinator

- (instancetype)initWithAppDelegate:(AppDelegate *)appDelegate
{
    self = [super init];
    if (self) {
        self.appDelegate = appDelegate;
    }
    return self;
}

- (void)start
{
    self.appDelegate.window = [[UIWindow alloc] initWithFrame: UIScreen.mainScreen.bounds];
    self.appDelegate.window.rootViewController = [[UIViewController alloc] init];
    [self.appDelegate.window makeKeyAndVisible];

    [self showHome];
}

- (void)showHome
{
    self.coordinator = [[HomeCoordinator alloc] initWithPresenter:self.appDelegate.window];
    [self.coordinator start];
}

@end

NS_ASSUME_NONNULL_END
