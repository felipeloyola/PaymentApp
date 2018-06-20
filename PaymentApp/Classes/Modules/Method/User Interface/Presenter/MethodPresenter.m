//
//  MethodPresenter.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "MethodPresenter.h"
#import "PaymentMethod.h"

@implementation MethodPresenter

- (void)updateView
{
    [self.methodInteractor findUpcomingItems];
}

- (void)saveMethod:(NSString *)methodId name:(NSString *)name paymentTypeId:(NSString *)paymentTypeId status:(NSString *)status secureThumbnail:(NSURL *)secureThumbnail minAllowedAmount:(float)minAllowedAmount maxAllowedAmount:(float)maxAllowedAmount{
    
    PaymentMethod *method = [[PaymentMethod alloc] initWithMethodId:methodId name:name paymentTypeId:paymentTypeId status:status secureThumbnail:secureThumbnail minAllowedAmount:minAllowedAmount maxAllowedAmount:maxAllowedAmount];
    
    [self.methodInteractor savePaymentMethod:method];
    
}

- (void)foundUpcomingItems:(NSArray *)upcomingItems{
    [self.userInterface loadMethods:upcomingItems];
}


@end
