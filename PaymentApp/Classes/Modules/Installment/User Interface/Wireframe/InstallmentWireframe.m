//
//  InstallmentWireframe.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "InstallmentWireframe.h"
#import "InstallmentViewController.h"
#import "InstallmentPresenter.h"
#import "VTDRootWireframe.h"

static NSString *InstallmentViewControllerIdentifier = @"InstallmentViewController";


@interface InstallmentWireframe ()

@property (nonatomic, strong) InstallmentViewController *installmentViewController;

@end

@implementation InstallmentWireframe

- (void)presentInstallmentInterface{
    
    InstallmentViewController *installmentViewController = [self installmentViewControllerFromStoryboard];
    installmentViewController.eventHandler = self.installmentPresenter;
    self.installmentPresenter.userInterface = installmentViewController;
    self.installmentViewController = installmentViewController;
    
    [self.rootWireframe showRootViewController:installmentViewController];
    
}


- (InstallmentViewController *)installmentViewControllerFromStoryboard{
    UIStoryboard *storyboard = [self mainStoryboard];
    InstallmentViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:InstallmentViewControllerIdentifier];
    
    return viewController;
}


- (UIStoryboard *)mainStoryboard{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    return storyboard;
}


@end
