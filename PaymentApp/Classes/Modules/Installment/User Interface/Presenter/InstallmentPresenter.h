//
//  InstallmentPresenter.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "InstallmentModule.h"
#import "InstallmentInteractor.h"
#import "InstallmentWireframe.h"
#import "InstallmentViewInterface.h"
#import "InstallmentInteractorIO.h"

@interface InstallmentPresenter : NSObject<InstallmentModule,InstallmentInteractorOutput>

@property (nonatomic, strong) InstallmentInteractor *installmentInteractor;
@property (nonatomic, strong) InstallmentWireframe *installmentWireframe;
@property (nonatomic, strong) UIViewController<InstallmentViewInterface> *userInterface;

@end
