//
//  AppDependencies.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "AppDependencies.h"
#import <UIKit/UIKit.h>
#import "AmountWireframe.h"
#import "VTDRootWireframe.h"
#import "AmountPresenter.h"
#import "AmountInteractor.h"


@interface AppDependencies ()

@property (nonatomic, strong) AmountWireframe *amountWireFrame;

@end


@implementation AppDependencies

- (id)init
{
    if ((self = [super init]))
    {
        [self configureDependencies];
    }
    
    return self;
}

- (void)installRootViewControllerIntoWindow:(UIWindow *)window
{
    [self.amountWireFrame presentAmountInterfaceFromWindow:window];
}

- (void)configureDependencies
{
    VTDRootWireframe *rootWireframe = [[VTDRootWireframe alloc] init];
    
    AmountWireframe *amountWireFrame = [[AmountWireframe alloc] init];
    AmountPresenter *amountPresenter = [[AmountPresenter alloc] init];
    AmountInteractor *amountInteractor = [[AmountInteractor alloc] init];
    
    amountPresenter.amountInteractor = amountInteractor;
    amountPresenter.amountWireframe = amountWireFrame;
    
    amountWireFrame.rootWireframe = rootWireframe;
    amountWireFrame.amountPresenter = amountPresenter;
    
    self.amountWireFrame = amountWireFrame;
    
    
    
}

@end
