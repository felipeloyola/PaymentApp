//
//  MethodViewController.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MethodViewInterface.h"
#import "MethodModule.h"


@interface MethodViewController : UIViewController<MethodViewInterface,UIPickerViewDataSource, UIPickerViewDelegate>
                                  
@property (nonatomic, strong) id<MethodModule> eventHandler;

@property (strong, nonatomic) IBOutlet UIPickerView *methodPicker;

@property(strong,nonatomic) NSArray *methods;

@end
