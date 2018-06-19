//
//  AmountPresenter.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "AmountModule.h"
#import "AmountViewInterface.h"
#import "AmountInteractor.h"
#import "AmountWireframe.h"

@interface AmountPresenter : NSObject<AmountModule>

@property (nonatomic, strong) UIViewController<AmountViewInterface> *interface;

@property (nonatomic, strong) AmountInteractor *amountInteractor;

@property (nonatomic, strong) AmountWireframe *amountWireframe;


@end
