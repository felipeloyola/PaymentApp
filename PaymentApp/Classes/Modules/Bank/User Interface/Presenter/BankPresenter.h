//
//  BankPresenter.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BankModule.h"
#import "BankInteractor.h"
#import "BankWireframe.h"
#import "BankViewInterface.h"
#import "BankInteractorIO.h"

@interface BankPresenter : NSObject<BankModule,BankInteractorOutput>

@property (nonatomic, strong) BankInteractor*  bankInteractor;
@property (nonatomic, strong) BankWireframe*  bankWireframe;
@property (nonatomic, strong) UIViewController<BankViewInterface> *userInterface;

@end
