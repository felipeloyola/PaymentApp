//
//  MethodWireframe.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "MethodWireframe.h"
#import "MethodViewController.h"
#import "MethodPresenter.h"
#import "RootWireframe.h"

static NSString *MethodViewControllerIdentifier = @"MethodViewController";

@interface MethodWireframe ()

@property (nonatomic, strong) MethodViewController *methodViewController;

@end

@implementation MethodWireframe

- (void)presentMethodInterface{
    
    MethodViewController *methodViewController = [self methodViewControllerFromStoryboard];
    methodViewController.eventHandler = self.methodPresenter;
    self.methodPresenter.userInterface = methodViewController;
    self.methodViewController = methodViewController;
    
    [self.rootWireframe showRootViewController:methodViewController];
    
}


- (MethodViewController *)methodViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    MethodViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:MethodViewControllerIdentifier];
    
    return viewController;
}


- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}


@end
