//
//  Screens.m
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 08/03/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import "Screens.h"
#import "ViewController.h"

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
    UIViewController *viewController = [self.storyBoard instantiateViewControllerWithIdentifier:@"ViewController"];
    if ([viewController isKindOfClass:[ViewController class]]) {
        return viewController;
    }
    return nil;
}

@end
