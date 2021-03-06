//
//  AmountWireframe.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class RootWireframe;
@class AmountPresenter;
@class MethodWireframe;

@interface AmountWireframe : NSObject

@property (nonatomic, strong) AmountPresenter *amountPresenter;
@property (nonatomic, strong) RootWireframe *rootWireframe;
@property (nonatomic, strong) MethodWireframe *methodWireframe;

- (void)presentAmountInterface;
- (void)presentAmountInterfaceAndShowInstallments;
- (void)presentMethodInterface;

@end
