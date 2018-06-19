//
//  MethodModule.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentMethod.h"

@protocol MethodModule <NSObject>

- (void)saveMethod:(PaymentMethod*) amount;
- (void)updateView;

@end
