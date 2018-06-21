//
//  BankInteractor.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "BankInteractor.h"
#import "BankAPIManager.h"
#import "PurchaseStoreManager.h"
#import "Purchase.h"


@interface BankInteractor()

@property (nonatomic, strong) BankAPIManager *dataManager;

@end


@implementation BankInteractor

- (instancetype)initWithDataManager:(BankAPIManager *)dataManager{
    if ((self = [super init])){
        _dataManager = dataManager;
    }
    
    return self;
}

- (void)findUpcomingItems{
    
    Purchase *purchase = [self.manager findPurchase];
    [self.dataManager findBanks:^(NSArray *methods){
        [self.output foundUpcomingItems:methods];
    } :purchase.method.methodId];
    

}

- (void) saveBank:(CardIssuer *)bank{
    if ([self.manager findPurchase]){
        Purchase *purchase = [self.manager findPurchase];
        purchase.cardIssuer = bank;
    }
}

@end
