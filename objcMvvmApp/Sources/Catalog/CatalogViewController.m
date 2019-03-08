//
//  CatalogViewController.m
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 22/02/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import "CatalogViewController.h"

@interface CatalogViewController ()

@end

@implementation CatalogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self bindTo:self.viewModel];
    [self.viewModel viewDidLoad];
}

- (void)bindTo:(CatalogViewModel *)viewModel
{
    __weak CatalogViewController *weakSelf = self;
    viewModel.titleText = ^(NSString *text) {
        weakSelf.title = text;
    };
}

@end
