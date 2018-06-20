//
//  InstallmentInteractor.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "InstallmentInteractor.h"
#import "InstallmentAPIManager.h"
#import "PurchaseStoreManager.h"
#import "Purchase.h"


@interface InstallmentInteractor()

@property (nonatomic, strong) InstallmentAPIManager *dataManager;

@end


@implementation InstallmentInteractor

- (instancetype)initWithDataManager:(InstallmentAPIManager *)dataManager{
    if ((self = [super init])){
        _dataManager = dataManager;
    }
    
    return self;
}

- (void)findUpcomingItems{
    
    Purchase *purchase = [self.manager findPurchase];
    [self.dataManager findInstallment:^(NSArray *installments) {
        [self.output foundUpcomingItems:installments];
    } :purchase.amount :purchase.method.methodId :purchase.cardIssuer.cardTypeId];
    
    
}

- (void) saveInstallment:(Installment *)installment{
    
    Purchase *purchase = [self.manager findPurchase];
    purchase.installment = installment;
    
}

@end
