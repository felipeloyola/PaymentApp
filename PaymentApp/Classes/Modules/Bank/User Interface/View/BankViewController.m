//
//  BankViewController.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "BankViewController.h"
#import <JMImageCache/JMImageCache.h>
#import "CardIssuer.h"

@interface BankViewController ()

@end

@implementation BankViewController

- (void)viewDidLoad {
    self.banks = [[NSArray alloc] init];
    self.bankPicker.delegate = self;
    self.bankPicker.dataSource = self;
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [self.eventHandler updateView];
}

- (void)loadBanks:(NSArray *)banks{
    self.banks = banks;
    [self reloadEntries];
    
}

- (void)reloadEntries{
    [self.bankPicker reloadAllComponents];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.banks.count;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    CardIssuer *bank = [self.banks objectAtIndex:row];
    
    UIView *pickerCustomView = (id)view;
    UILabel *pickerViewLabel;
    UIImageView *pickerImageView;
    
    if (!pickerCustomView) {
        pickerCustomView= [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f,
                                                                   [pickerView rowSizeForComponent:component].width - 10.0f, [pickerView       rowSizeForComponent:component].height)];
        pickerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 35.0f, 35.0f)];
        pickerViewLabel= [[UILabel alloc] initWithFrame:CGRectMake(37.0f, -5.0f,
                                                                   [pickerView rowSizeForComponent:component].width - 10.0f, [pickerView rowSizeForComponent:component].height)];
        
        [pickerCustomView addSubview:pickerImageView];
        [pickerCustomView addSubview:pickerViewLabel];
    }
    
    pickerImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [[JMImageCache sharedCache] imageForURL:bank.secureThumbnail completionBlock:^(UIImage *downloadedImage) {
        pickerImageView.image = downloadedImage;
    }];
    
    
    pickerViewLabel.backgroundColor = [UIColor clearColor];
    pickerViewLabel.text = bank.name;
    return pickerCustomView;
    
}

- (IBAction)didTapNext:(id)sender {
    
}


@end
