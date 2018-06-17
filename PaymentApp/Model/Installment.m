//
//  Installment.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "Installment.h"

@implementation Installment
- (instancetype)initWithInstallmentsNumber:(int)installmentsNumber installmentsRecommendedMessage:(NSString *) installmentsRecommendedMessage {
    
    self = [super init];
    
    if (self) {
        
        self.installmentsNumber = installmentsNumber;
        self.installmentsRecommendedMessage = installmentsRecommendedMessage;
        
    }
    
    return self;
    
}
@end
