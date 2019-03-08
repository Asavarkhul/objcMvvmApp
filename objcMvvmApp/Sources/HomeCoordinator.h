//
//  HomeCoordinator.h
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 08/03/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeCoordinator : NSObject

- (instancetype)initWithPresenter:(UIWindow *)presenter;
- (void)start;

@end

NS_ASSUME_NONNULL_END
