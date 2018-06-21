//
//  MethodWireframe.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@class RootWireframe;
@class MethodPresenter;
@class BankWireframe;
@class AmountWireframe;

@interface MethodWireframe : NSObject


@property (nonatomic, strong) MethodPresenter *methodPresenter;

@property (nonatomic, strong) RootWireframe *rootWireframe;

@property (nonatomic, strong) BankWireframe *bankWireframe;

@property (nonatomic, strong) AmountWireframe *amountWireframe;

- (void)presentMethodInterface;


@end
