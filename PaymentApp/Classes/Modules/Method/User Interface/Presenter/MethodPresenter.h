//
//  MethodPresenter.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MethodModule.h"
#import "MethodInteractor.h"
#import "MethodWireframe.h"
#import "MethodViewInterface.h"
#import "MethodInteractorIO.h"

@interface MethodPresenter : NSObject<MethodModule,MethodInteractorOutput>

@property (nonatomic, strong) MethodInteractor*  methodInteractor;
@property (nonatomic, strong) MethodWireframe*  methodWireframe;
@property (nonatomic, strong) UIViewController<MethodViewInterface> *userInterface;

@end
