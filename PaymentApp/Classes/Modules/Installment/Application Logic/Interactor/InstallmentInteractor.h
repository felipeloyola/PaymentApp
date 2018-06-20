//
//  InstallmentInteractor.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InstallmentInteractorIO.h"
#import "Installment.h"

@class PurchaseStoreManager;
@class InstallmentAPIManager;

@interface InstallmentInteractor : NSObject<InstallmentInteractorInput>

@property (strong, nonatomic) PurchaseStoreManager * manager;

@property (nonatomic, weak) id<InstallmentInteractorOutput> output;

- (instancetype)initWithDataManager:(InstallmentAPIManager *)dataManager;

- (void) saveInstallment:(Installment*) installment;

@end
