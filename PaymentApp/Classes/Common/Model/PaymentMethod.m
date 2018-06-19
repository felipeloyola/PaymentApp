//
//  PaymentMethod.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "PaymentMethod.h"

@implementation PaymentMethod

-(instancetype)initWithMethodId:(NSString *)methodId name:(NSString *)name paymentTypeId:(NSString *)paymentTypeId status:(NSString *)status secureThumbnail:(NSURL *)secureThumbnail minAllowedAmount:(float)minAllowedAmount maxAllowedAmount:(float)maxAllowedAmount {
    
    self=[super init];
    
    if (self) {
        self.methodId=methodId;
        self.paymentTypeId=paymentTypeId;
        self.name=name;
        self.status=status;
        self.secureThumbnail=secureThumbnail;
        self.minAllowedAmount=minAllowedAmount;
        self.maxAllowedAmount=maxAllowedAmount;
    }
    return self;
}
@end
