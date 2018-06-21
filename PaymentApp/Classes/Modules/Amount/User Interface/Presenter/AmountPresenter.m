//
//  AmountPresenter.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "AmountPresenter.h"

@implementation AmountPresenter


- (void)saveAmount:(int) amount{
    
    [self.amountInteractor save:amount];
    [self.amountWireframe presentMethodInterface];

}

-(void) showInstallment{
    [self.interface showInstallment:[self.amountInteractor findInstallmentMessage]];
}

- (void) updateView{
    
    [self.interface initPreviusAmount:[self.amountInteractor findPreviusAmount]];
    
}

- (void) amountHasChanged:(NSString *)amount{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    NSString *formated = [formatter stringFromNumber:[NSNumber numberWithInt:[amount intValue]]];
    [self.interface showFormatedAmount:formated];
}

@end
