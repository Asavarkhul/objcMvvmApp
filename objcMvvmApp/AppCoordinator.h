//
//  AppCoordinator.h
//  objcMvvmApp
//
//  Created by Bertrand BLOC'H on 22/02/2019.
//  Copyright © 2019 bblch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppCoordinator : NSObject
- (instancetype)initWithAppDelegate:(AppDelegate *)appDelegate;
- (void)start;
@end

NS_ASSUME_NONNULL_END
