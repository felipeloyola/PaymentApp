//
//  Installment.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Installment : NSObject
- (instancetype)initWithInstallmentsNumber:(int)installmentsNumber installmentsRecommendedMessage:(NSString *) installmentsRecommendedMessage;

@property (assign, nonatomic) int installmentsNumber;
@property (strong, nonatomic) NSString * installmentsRecommendedMessage;


@end
