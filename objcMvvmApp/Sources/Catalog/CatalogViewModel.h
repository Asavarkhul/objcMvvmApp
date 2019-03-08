//
//  CatalogViewModel.h
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 08/03/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CatalogViewModel : NSObject

// MARK: - Outputs

@property (strong, nonatomic) void (^titleText)(NSString *);

// MARK: - Inputs

- (void)viewDidLoad;

@end

NS_ASSUME_NONNULL_END
