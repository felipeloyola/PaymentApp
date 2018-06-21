//
//  BankPresenter.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "BankPresenter.h"
#import "CardIssuer.h"
#import "InstallmentWireframe.h"

@implementation BankPresenter

- (void)updateView
{
    [self.bankInteractor findUpcomingItems];
}

- (void)saveBank:(CardIssuer *)bank{
        
    [self.bankInteractor saveBank:bank];
    
}

- (void)foundUpcomingItems:(NSArray *)upcomingItems{
    [self.userInterface loadBanks:upcomingItems];
}

-(void) goForward{
    [self.bankWireframe.installmentWireframe presentInstallmentInterface];
}
@end
