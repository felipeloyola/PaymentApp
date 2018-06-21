//
//  AmountInteractor.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PurchaseStoreManager.h"

@interface AmountInteractor : NSObject

@property (strong, nonatomic) PurchaseStoreManager * manager;

- (int)findPreviusAmount;

- (void)save:(int) amount;

-(NSString*) findInstallmentMessage;

@end
