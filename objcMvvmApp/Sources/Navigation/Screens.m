//
//  Screens.m
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 08/03/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import "Screens.h"
#import "CatalogViewController.h"
#import "CatalogViewModel.h"

@interface Screens()
@property (nonatomic, strong) UIStoryboard *storyBoard;
@end

@implementation Screens

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.storyBoard = [UIStoryboard storyboardWithName:@"Main"
                                                    bundle:[NSBundle bundleForClass:[Screens self]]];
    }
    return self;
}

- (UIViewController *)createCatalogViewController
{
    CatalogViewController *viewController = [self.storyBoard instantiateViewControllerWithIdentifier:@"CatalogViewController"];
    if ([viewController isKindOfClass:[CatalogViewController class]]) {
        CatalogViewModel *viewModel = [[CatalogViewModel alloc] init];
        viewController.viewModel = viewModel;
        return viewController;
    }
    return nil;
}

@end
