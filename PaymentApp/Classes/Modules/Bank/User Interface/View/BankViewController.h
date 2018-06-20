//
//  BankViewController.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BankViewInterface.h"
#import "BankModule.h"


@interface BankViewController : UIViewController<BankViewInterface,UIPickerViewDataSource,UIPickerViewDelegate>

@property (nonatomic, strong) id<BankModule> eventHandler;

@property (strong, nonatomic) IBOutlet UIPickerView *bankPicker;

@property(strong,nonatomic) NSArray *banks;

@end
