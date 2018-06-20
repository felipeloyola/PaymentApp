//
//  BankWireframe.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>


@class VTDRootWireframe;
@class BankPresenter;

@interface BankWireframe : NSObject

@property (nonatomic, strong) BankPresenter *bankPresenter;

@property (nonatomic, strong) VTDRootWireframe *rootWireframe;


- (void)presentBankInterface;


@end
