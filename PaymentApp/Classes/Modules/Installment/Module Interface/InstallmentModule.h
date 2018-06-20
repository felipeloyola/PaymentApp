//
//  InstallmentModule.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//
#import "Installment.h"

@protocol InstallmentModule <NSObject>

- (void)saveInstallment:(Installment *)installment;

- (void)updateView;

@end

