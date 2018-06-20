//
//  BankModule.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "CardIssuer.h"

@protocol BankModule <NSObject>

- (void)saveBank:(CardIssuer *)bank;

- (void)updateView;

@end
