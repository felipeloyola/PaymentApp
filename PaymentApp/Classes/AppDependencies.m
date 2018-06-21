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
#import "RootWireframe.h"
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

#import "InstallmentWireframe.h"
#import "InstallmentPresenter.h"
#import "InstallmentInteractor.h"
#import "InstallmentAPIManager.h"


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
    
    RootWireframe *rootWireframe = [[RootWireframe alloc] init];
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
    bankWireframe.methodWireframe = methodWireframe;
    
    methodWireframe.bankWireframe = bankWireframe;
    methodWireframe.amountWireframe = amountWireFrame;
    
    InstallmentWireframe *installmentWireframe = [[InstallmentWireframe alloc] init];
    InstallmentPresenter *installmentPresenter = [[InstallmentPresenter alloc] init];
    InstallmentInteractor *installmentInteractor = [[InstallmentInteractor alloc] initWithDataManager:[[InstallmentAPIManager alloc] init]];
    
    installmentInteractor.output = installmentPresenter;
    installmentInteractor.manager = purchaseManager;
    
    installmentPresenter.installmentInteractor = installmentInteractor;
    installmentPresenter.installmentWireframe = installmentWireframe;
    
    installmentWireframe.amountWireframe = amountWireFrame;
    installmentWireframe.rootWireframe = rootWireframe;
    installmentWireframe.installmentPresenter = installmentPresenter;
    
    bankWireframe.installmentWireframe = installmentWireframe;
    

}

@end
