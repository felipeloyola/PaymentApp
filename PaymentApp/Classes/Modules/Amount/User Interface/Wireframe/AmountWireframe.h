//
//  AmountWireframe.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class VTDRootWireframe;
@class AmountPresenter;

@interface AmountWireframe : NSObject

@property (nonatomic, strong) AmountPresenter *amountPresenter;
@property (nonatomic, strong) VTDRootWireframe *rootWireframe;

- (void)presentAmountInterfaceFromWindow:(UIWindow *)window;

@end
