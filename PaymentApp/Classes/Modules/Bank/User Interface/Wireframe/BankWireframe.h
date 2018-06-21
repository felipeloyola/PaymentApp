//
//  BankWireframe.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>


@class RootWireframe;
@class BankPresenter;
@class InstallmentWireframe;

@interface BankWireframe : NSObject

@property (nonatomic, strong) BankPresenter *bankPresenter;

@property (nonatomic, strong) RootWireframe *rootWireframe;

@property (nonatomic, strong) InstallmentWireframe *installmentWireframe;


- (void)presentBankInterface;


@end
