//
//  AppDependencies.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "AppDependencies.h"
#import <UIKit/UIKit.h>
#import "PurchaseStoreManager.h"
#import "AmountWireframe.h"
#import "VTDRootWireframe.h"
#import "AmountPresenter.h"
#import "AmountInteractor.h"
#import "MethodWireframe.h"
#import "MethodPresenter.h"
#import "MethodInteractor.h"
#import "MethodAPIManager.h"

#import "BankWireframe.h"
#import "BankPresenter.h"
#import "BankInteractor.h"
#import "BankAPIManager.h"


@interface AppDependencies ()

@property (nonatomic, strong) AmountWireframe *amountWireFrame;

@end


@implementation AppDependencies

- (instancetype)initWithWindows:(UIWindow *)window{
    
    if ((self = [super init])){
        [self configureDependencies:window];
    }
    
    return self;
}

- (void)installRootViewController{
    [self.amountWireFrame presentAmountInterface];
}

- (void)configureDependencies:(UIWindow *)window
{
    PurchaseStoreManager *purchaseManager = [[PurchaseStoreManager alloc] init];
    
    VTDRootWireframe *rootWireframe = [[VTDRootWireframe alloc] init];
    rootWireframe.window =  window;
    
    
    AmountWireframe *amountWireFrame = [[AmountWireframe alloc] init];
    AmountPresenter *amountPresenter = [[AmountPresenter alloc] init];
    AmountInteractor *amountInteractor = [[AmountInteractor alloc] init];
    
    amountInteractor.manager = purchaseManager;
    
    amountPresenter.amountInteractor = amountInteractor;
    amountPresenter.amountWireframe = amountWireFrame;
    
    amountWireFrame.rootWireframe = rootWireframe;
    amountWireFrame.amountPresenter = amountPresenter;
    
    self.amountWireFrame = amountWireFrame;
    
    MethodWireframe *methodWireframe = [[MethodWireframe alloc] init];
    MethodPresenter *methodPresenter = [[MethodPresenter alloc] init];
    MethodInteractor *methodInteractor = [[MethodInteractor alloc] initWithDataManager:[[MethodAPIManager alloc] init]];
    
    methodInteractor.output = methodPresenter;
    methodInteractor.manager = purchaseManager;
    
    methodPresenter.methodInteractor = methodInteractor;
    methodPresenter.methodWireframe = methodWireframe;
    
    methodWireframe.rootWireframe = rootWireframe;
    methodWireframe.methodPresenter = methodPresenter;
    
    amountWireFrame.methodWireframe = methodWireframe;
    
    BankWireframe *bankWireframe = [[BankWireframe alloc] init];
    BankPresenter *bankPresenter = [[BankPresenter alloc] init];
    BankInteractor *bankInteractor = [[BankInteractor alloc] initWithDataManager:[[BankAPIManager alloc] init]];
    
    bankInteractor.output = bankPresenter;
    bankInteractor.manager = purchaseManager;
    
    bankPresenter.bankInteractor = bankInteractor;
    bankPresenter.bankWireframe = bankWireframe;
    
    bankWireframe.rootWireframe = rootWireframe;
    bankWireframe.bankPresenter = bankPresenter;
    
    methodWireframe.bankWireframe = bankWireframe;
    methodWireframe.amountWireframe = amountWireFrame;
    
    
 
}

@end
