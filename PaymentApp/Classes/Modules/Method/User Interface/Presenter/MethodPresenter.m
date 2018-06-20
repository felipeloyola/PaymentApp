//
//  MethodPresenter.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "MethodPresenter.h"
#import "PaymentMethod.h"
#import "AmountWireframe.h"
#import "BankWireframe.h"

@implementation MethodPresenter

- (void)updateView
{
    [self.methodInteractor findUpcomingItems];
}

- (void)saveMethod:(PaymentMethod *)method{

    if ([self.methodInteractor isValidPaymentMethod: method ]){
        [self.methodInteractor savePaymentMethod:method];
        [self.methodWireframe.bankWireframe presentBankInterface];
    }else{
        [self.userInterface showOutOfRangeAmountForMethodMessage];
    }
    
}

- (void)goBack {

    [self.methodWireframe.amountWireframe presentAmountInterface];
}


- (void)foundUpcomingItems:(NSArray *)upcomingItems{
    [self.userInterface loadMethods:upcomingItems];
}




@end
