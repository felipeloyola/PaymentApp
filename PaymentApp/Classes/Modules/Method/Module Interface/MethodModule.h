//
//  MethodModule.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MethodModule <NSObject>

- (void)saveMethod:(NSString *)methodId name:(NSString *)name paymentTypeId:(NSString *)paymentTypeId status:(NSString *)status secureThumbnail:(NSURL *)secureThumbnail minAllowedAmount:(float)minAllowedAmount maxAllowedAmount:(float)maxAllowedAmount;

- (void)updateView;

@end
