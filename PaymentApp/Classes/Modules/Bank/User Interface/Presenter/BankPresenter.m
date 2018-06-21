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
#import "MethodWireframe.h"

@implementation BankPresenter

- (void)updateView
{
    [self.bankInteractor findUpcomingItems];
}

- (void)saveBank:(CardIssuer *)bank{
        
    [self.bankInteractor saveBank:bank];
    
}

- (void)foundUpcomingItems:(NSArray *)upcomingItems{
    if (upcomingItems.count > 0){
        [self.userInterface loadBanks:upcomingItems];
    }else{
        [self.userInterface showBanksNotFound];
    }
    
}

-(void) goForward{
    [self.bankWireframe.installmentWireframe presentInstallmentInterface];
}

-(void) goBack{
    [self.bankWireframe.methodWireframe presentMethodInterface];
}
@end
