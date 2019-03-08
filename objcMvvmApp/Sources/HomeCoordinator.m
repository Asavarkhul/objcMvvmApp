//
//  HomeCoordinator.m
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 08/03/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import "HomeCoordinator.h"
#import "Screens.h"

@interface HomeCoordinator()
@property (nonatomic, strong) UIWindow *presenter;
@property (nonatomic, strong) UINavigationController *controller;
@property (nonatomic, strong) Screens *screens;
@end

@implementation HomeCoordinator

- (instancetype)initWithPresenter:(UIWindow *)presenter
{
    self = [super init];
    if (self) {
        self.presenter = presenter;
        self.controller = [[UINavigationController alloc] init];
        self.screens = [[Screens alloc] init];
        [self start];
    }
    return self;
}

- (void)start
{
    self.presenter.rootViewController = self.controller;
    UIViewController *viewController = [self.screens createCatalogViewController];
    self.controller.viewControllers = @[viewController];
}

@end
