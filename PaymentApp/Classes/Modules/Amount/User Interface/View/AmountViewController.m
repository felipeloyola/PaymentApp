//
//  AmountViewController.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "AmountViewController.h"

@interface AmountViewController ()

@end

@implementation AmountViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void) viewWillAppear:(BOOL)animated{
    [self.eventHandler updateView];
}


- (void)showOutOfRangeMessage {
    
}

- (void)initPreviusAmount:(int)amount {
    self.amount.text = [NSString stringWithFormat:@"%d",amount];
}

- (IBAction)didPressEnter:(id)sender {
    [self.eventHandler saveAmount:[self.amount.text intValue]];
}

@end
