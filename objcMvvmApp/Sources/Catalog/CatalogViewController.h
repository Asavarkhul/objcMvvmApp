//
//  CatalogViewController.h
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 22/02/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CatalogViewModel.h"

@interface CatalogViewController : UIViewController
@property (strong, nonatomic)CatalogViewModel *viewModel;
@end

