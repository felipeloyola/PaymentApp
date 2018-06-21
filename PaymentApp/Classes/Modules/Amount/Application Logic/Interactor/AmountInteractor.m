//
//  AmountInteractor.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "AmountInteractor.h"
#import "Purchase.h"

@implementation AmountInteractor

- (int)findPreviusAmount{
    Purchase *purchase = [self.manager findPurchase];
    return purchase.amount;
}

- (void)save:(int) amount{
    
    if ([self.manager findPurchase]){
        Purchase *purchase = [self.manager findPurchase];
        purchase.amount = amount;

    }
}

-(NSString*) findInstallmentMessage{
    Purchase *purchase = [self.manager findPurchase];
    return purchase.installment.installmentsRecommendedMessage;
}
@end
