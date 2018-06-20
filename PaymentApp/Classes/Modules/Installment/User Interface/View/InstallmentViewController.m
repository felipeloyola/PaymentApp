//
//  InstallmentViewController.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "InstallmentViewController.h"
#import <JMImageCache/JMImageCache.h>
#import "Installment.h"

@interface InstallmentViewController ()

@end

@implementation InstallmentViewController

- (void)viewDidLoad {
    self.installments = [[NSArray alloc] init];
    self.installmentPicker.delegate = self;
    self.installmentPicker.dataSource = self;
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [self.eventHandler updateView];
}

- (void)loadInstallment:(NSArray *)installments{
    self.installments = installments;
    [self reloadEntries];
    
}

- (void)reloadEntries{
    [self.installmentPicker reloadAllComponents];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.installments.count;
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    Installment *installment = [self.installments objectAtIndex:row];
    return installment.installmentsRecommendedMessage;
}

- (IBAction)didTapFinish:(id)sender {
    
}

@end
