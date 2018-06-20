//
//  InstallmentInteractorIO.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//


@protocol InstallmentInteractorInput <NSObject>
- (void)findUpcomingItems;
@end


@protocol InstallmentInteractorOutput <NSObject>

- (void)foundUpcomingItems:(NSArray *)upcomingItems;

@end
