//
//  Purchase.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentMethod.h"
#import "CardIssuer.h"

@interface Purchase : NSObject
@property (assign, nonatomic) int amount;
@property (strong, nonatomic) PaymentMethod * method;
@property (strong, nonatomic) CardIssuer * cardIssuer;

@end
