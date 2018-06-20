//
//  AppDependencies.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppDependencies : NSObject

- (instancetype)initWithWindows:(UIWindow *)window;

- (void)installRootViewController;

@end
