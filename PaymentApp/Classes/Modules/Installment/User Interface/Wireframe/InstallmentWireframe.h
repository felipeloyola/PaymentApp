//
//  InstallmentWireframe.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>


@class RootWireframe;
@class InstallmentPresenter;
@class AmountWireframe;

@interface InstallmentWireframe : NSObject

@property (nonatomic, strong) InstallmentPresenter *installmentPresenter;

@property (nonatomic, strong) RootWireframe *rootWireframe;

@property (nonatomic, strong) AmountWireframe *amountWireframe;

- (void)presentInstallmentInterface;

@end

