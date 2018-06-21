//
//  AmountWireframe.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "AmountWireframe.h"
#import "AmountViewController.h"
#import "RootWireframe.h"
#import "AmountPresenter.h"
#import "MethodWireframe.h"

static NSString *ListViewControllerIdentifier = @"AmountViewController";

@interface AmountWireframe()

@property (nonatomic, strong) AmountViewController *amountViewController;

@end

@implementation AmountWireframe

- (void)presentAmountInterface{
    
    AmountViewController *amountViewController = [self amountViewControllerFromStoryboard];
    amountViewController.eventHandler = self.amountPresenter;
    self.amountPresenter.interface = amountViewController;
    self.amountViewController = amountViewController;
    
    [self.rootWireframe showRootViewController:amountViewController];
}


- (void)presentAmountInterfaceAndShowInstallments{
    
    AmountViewController *amountViewController = [self amountViewControllerFromStoryboard];
    amountViewController.eventHandler = self.amountPresenter;
    self.amountPresenter.interface = amountViewController;
    self.amountViewController = amountViewController;
    
    [self.rootWireframe showRootViewController:amountViewController];
    
    [self.amountPresenter showInstallment];
    
}

- (AmountViewController *)amountViewControllerFromStoryboard{
    
    UIStoryboard *storyboard = [self mainStoryboard];
    AmountViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:ListViewControllerIdentifier];
    
    return viewController;
}


- (UIStoryboard *)mainStoryboard{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    return storyboard;
}

- (void)presentMethodInterface{
    [self.methodWireframe presentMethodInterface];
}

@end
