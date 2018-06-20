//
//  PurchaseStoreManager.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "PurchaseStoreManager.h"
#import "Purchase.h"

@implementation PurchaseStoreManager


- (id)init {
    self = [super init];
    if (self) {
        self.purchase= [[Purchase alloc] init];
    }
    return self;
}


- (Purchase *) findPurchase{
    return self.purchase;
}


@end
