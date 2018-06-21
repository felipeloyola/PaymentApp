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
    
    [self.amount addTarget:self
                  action:@selector(textFieldDidChange:)
        forControlEvents:UIControlEventEditingChanged];

}

-(void) textFieldDidChange:(id)sender{
    [self.eventHandler amountHasChanged:self.amount.text];
}

-(void) viewWillAppear:(BOOL)animated{
    [self.eventHandler updateView];
}


- (void)showInstallment:(NSString*)installmentMessage{
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Compra Terminada"
                                                                   message:installmentMessage
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* acept = [UIAlertAction actionWithTitle:@"Aceptar" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                             
                                                         }];

    
    [alert addAction:acept];
    
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)initPreviusAmount:(int)amount {
    if (amount > 0){
        self.amount.text = [NSString stringWithFormat:@"%d",amount];
    }else{
        self.amount.text = @"";
    }
    
    [self textFieldDidChange:self.amount];
    
}

- (void)showFormatedAmount:(NSString *)formated{
    self.formated.text = formated;
}

- (void)next{
    [self.eventHandler saveAmount:[self.amount.text intValue]];
}

- (IBAction)didPressEnter:(id)sender {
    [self next];
}

- (IBAction)didTapNext:(id)sender {
    [self next];
}


@end
