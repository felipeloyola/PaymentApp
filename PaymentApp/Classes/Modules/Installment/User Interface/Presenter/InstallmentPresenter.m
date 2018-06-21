//
//  InstallmentPresenter.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "InstallmentPresenter.h"
#import "Installment.h"
#import "AmountWireframe.h"
#import "InstallmentWireframe.h"

@implementation InstallmentPresenter

- (void)updateView{
    [self.installmentInteractor findUpcomingItems];
}

- (void)saveInstallment:(Installment *)installment{
    [self.installmentInteractor saveInstallment:installment];
}

- (void)foundUpcomingItems:(NSArray *)upcomingItems{
    [self.userInterface loadInstallment:upcomingItems];
}

-(void) finish{
    
    [self.installmentWireframe.amountWireframe presentAmountInterfaceAndShowInstallments];
}

@end
