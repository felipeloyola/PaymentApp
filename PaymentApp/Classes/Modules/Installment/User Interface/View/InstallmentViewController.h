//
//  InstallmentViewController.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InstallmentViewInterface.h"
#import "InstallmentModule.h"


@interface InstallmentViewController : UIViewController<InstallmentViewInterface,UIPickerViewDataSource,UIPickerViewDelegate>

@property (nonatomic, strong) id<InstallmentModule> eventHandler;

@property (strong, nonatomic) IBOutlet UIPickerView *installmentPicker;

@property(strong,nonatomic) NSArray *installments;

@end
