//
//  BankInteractorIO.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//


@protocol BankInteractorInput <NSObject>
- (void)findUpcomingItems;
@end


@protocol BankInteractorOutput <NSObject>

- (void)foundUpcomingItems:(NSArray *)upcomingItems;

@end
