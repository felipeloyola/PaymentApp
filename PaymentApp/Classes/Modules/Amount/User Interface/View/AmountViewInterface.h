//
//  AmountViewInterface.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//


@protocol AmountViewInterface <NSObject>

- (void)showOutOfRangeMessage;
- (void)initPreviusAmount:(int)amount;

@end
