//
//  PaymentMethod.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PaymentMethod : NSObject

- (instancetype)initWithMethodId:(NSString *)methodId name:(NSString *)name paymentTypeId:(NSString *)paymentTypeId status:(NSString *)status secureThumbnail:(NSURL *)secureThumbnail minAllowedAmount:(float)minAllowedAmount maxAllowedAmount:(float)maxAllowedAmount;

@property (strong, nonatomic) NSString *methodId;
@property (strong, nonatomic) NSString *paymentTypeId;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *status;
@property (strong, nonatomic) NSURL *secureThumbnail;
@property (assign, nonatomic) int minAllowedAmount;
@property (assign, nonatomic) float maxAllowedAmount;

@end
