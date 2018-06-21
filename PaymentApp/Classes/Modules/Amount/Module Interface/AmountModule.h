//
//  AmountModule.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AmountModule <NSObject>

- (void)saveAmount:(int) amount;
- (void)amountHasChanged:(NSString*)amount;
- (void)showInstallment;
- (void)updateView;

@end
