//
//  MethodWireframe.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@class VTDRootWireframe;
@class MethodPresenter;

@interface MethodWireframe : NSObject


@property (nonatomic, strong) MethodPresenter *methodPresenter;

@property (nonatomic, strong) VTDRootWireframe *rootWireframe;

- (void)presentMethodInterface;


@end
