//
//  MethodInteractor.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentMethod.h"
#import "MethodInteractorIO.h"

@class PurchaseStoreManager;

@class MethodAPIManager;

@interface MethodInteractor : NSObject<MethodInteractorInput>

@property (strong, nonatomic) PurchaseStoreManager * manager;

@property (nonatomic, weak) id<MethodInteractorOutput> output;

- (instancetype)initWithDataManager:(MethodAPIManager *)dataManager;

- (void) savePaymentMethod:(PaymentMethod*) method;

- (Boolean) isValidPaymentMethod:(PaymentMethod*) method;

@end
