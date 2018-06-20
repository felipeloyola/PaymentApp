//
//  BankInteractor.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankInteractorIO.h"
#import "CardIssuer.h"

@class PurchaseStoreManager;
@class BankAPIManager;

@interface BankInteractor : NSObject<BankInteractorInput>

@property (strong, nonatomic) PurchaseStoreManager * manager;

@property (nonatomic, weak) id<BankInteractorOutput> output;

- (instancetype)initWithDataManager:(BankAPIManager *)dataManager;

- (void) saveBank:(CardIssuer*) method;

@end
