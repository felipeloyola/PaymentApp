//
//  AmountViewController.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AmountModule.h"
#import "AmountViewInterface.h"

@interface AmountViewController : UIViewController<AmountViewInterface>

@property (strong, nonatomic) IBOutlet UITextField *amount;

@property (nonatomic, strong) id<AmountModule> eventHandler;

@end
