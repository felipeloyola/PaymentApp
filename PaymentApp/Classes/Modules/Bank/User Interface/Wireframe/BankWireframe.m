//
//  BankWireframe.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "BankWireframe.h"
#import "BankViewController.h"
#import "BankPresenter.h"
#import "RootWireframe.h"

static NSString *BankViewControllerIdentifier = @"BankViewController";

@interface BankWireframe ()

@property (nonatomic, strong) BankViewController *bankViewController;

@end

@implementation BankWireframe

- (void)presentBankInterface{
    
    BankViewController *bankViewController = [self bankViewControllerFromStoryboard];
    bankViewController.eventHandler = self.bankPresenter;
    self.bankPresenter.userInterface = bankViewController;
    self.bankViewController = bankViewController;
    
    [self.rootWireframe showRootViewController:bankViewController];
    
}


- (BankViewController *)bankViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    BankViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:BankViewControllerIdentifier];
    
    return viewController;
}


- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}

@end
