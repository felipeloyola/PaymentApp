//
//  BankViewInterface.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//


#import <Foundation/Foundation.h>

// Defines the public interface that something else can use to drive the user interface
@protocol BankViewInterface <NSObject>

- (void)loadBanks:(NSArray *)banks;
- (void)showBanksNotFound;

@end
