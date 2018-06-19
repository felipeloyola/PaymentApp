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
    if ([self.manager findPurchase]){
        Purchase *purchase = [self.manager findPurchase];
        return purchase.amount;
    }
    return 0;
}

- (void)save:(int) amount{
    
    if ([self.manager findPurchase]){
        Purchase *purchase = [self.manager findPurchase];
        purchase.amount = amount;
    }
    
}
@end
