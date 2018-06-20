//
//  MethodInteractorIO.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MethodInteractorInput <NSObject>
- (void)findUpcomingItems;
@end


@protocol MethodInteractorOutput <NSObject>

- (void)foundUpcomingItems:(NSArray *)upcomingItems;

@end
