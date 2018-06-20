//
//  InstallmentViewInterface.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>

// Defines the public interface that something else can use to drive the user interface
@protocol InstallmentViewInterface <NSObject>

- (void)loadInstallment:(NSArray *)installments;


@end
