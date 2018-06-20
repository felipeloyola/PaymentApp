//
//  PurchaseStoreManager.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Purchase.h"

@interface PurchaseStoreManager : NSObject

@property(nonatomic,strong) Purchase *purchase;

- (Purchase *) findPurchase;

@end
