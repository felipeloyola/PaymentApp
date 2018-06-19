//
//  AmountWireframe.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "AmountWireframe.h"
#import "AmountViewController.h"
#import "VTDRootWireframe.h"
#import "AmountPresenter.h"

static NSString *ListViewControllerIdentifier = @"AmountViewController";

@interface AmountWireframe()

@property (nonatomic, strong) AmountViewController *amountViewController;

@end

@implementation AmountWireframe

- (void)presentAmountInterfaceFromWindow:(UIWindow *)window
{
    AmountViewController *amountViewController = [self amountViewControllerFromStoryboard];
    amountViewController.eventHandler = self.amountPresenter;
    self.amountPresenter.interface = amountViewController;
    self.amountViewController = amountViewController;
    
    [self.rootWireframe showRootViewController:amountViewController
                                      inWindow:window];
}


- (AmountViewController *)amountViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    AmountViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:ListViewControllerIdentifier];
    
    return viewController;
}


- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}

@end
