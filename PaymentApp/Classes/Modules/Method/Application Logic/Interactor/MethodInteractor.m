//
//  MethodInteractor.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "MethodInteractor.h"
#import "MethodAPIManager.h"
#import "PurchaseStoreManager.h"

@interface MethodInteractor()

@property (nonatomic, strong)   MethodAPIManager *dataManager;

@end

@implementation MethodInteractor

- (instancetype)initWithDataManager:(MethodAPIManager *)dataManager{
    if ((self = [super init])){
        _dataManager = dataManager;
    }
    
    return self;
}

- (void)findUpcomingItems{
    
    [self.dataManager findMethods:^(NSArray *methods) {
        [self.output foundUpcomingItems:methods];
    }];
}

- (void) savePaymentMethod:(PaymentMethod *)method{

    Purchase *purchase = [self.manager findPurchase];
    purchase.method = method;
}

- (Boolean)isValidPaymentMethod:(PaymentMethod *)method{
    Purchase *purchase = [self.manager findPurchase];
    return purchase.amount < method.maxAllowedAmount && purchase.amount > method.minAllowedAmount;
}

@end
