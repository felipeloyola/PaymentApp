//
//  MethodViewController.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "MethodViewController.h"
#import <JMImageCache/JMImageCache.h>
#import "PaymentMethod.h"

@interface MethodViewController ()

@end

@implementation MethodViewController

- (void)viewDidLoad {
    self.methods = [[NSArray alloc] init];
    self.methodPicker.delegate = self;
    self.methodPicker.dataSource = self;
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [self.eventHandler updateView];
}

- (void)loadMethods:(NSArray *)methods{
    self.methods = methods;
    [self reloadEntries];
    
}

- (void)reloadEntries{
    [self.methodPicker reloadAllComponents];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.methods.count;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    PaymentMethod *method = [self.methods objectAtIndex:row];
    
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
    
    [[JMImageCache sharedCache] imageForURL:method.secureThumbnail completionBlock:^(UIImage *downloadedImage) {
        pickerImageView.image = downloadedImage;
    }];
    
    
    pickerViewLabel.backgroundColor = [UIColor clearColor];
    pickerViewLabel.text = method.name;
    return pickerCustomView;
    
}

- (IBAction)didTapNext:(id)sender {
    PaymentMethod *selected = [self.methods objectAtIndex:[self.methodPicker selectedRowInComponent:0]];
    [self.eventHandler saveMethod:selected];
}

- (void)showOutOfRangeAmountForMethodMessage{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Error"
                                                                   message:@"Valor indicado fuera de rango para este metodo de pago"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* goBackAction = [UIAlertAction actionWithTitle:@"Cambiar Valor" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              [self.eventHandler goBack];
                                                          }];
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cambiar Metodo" style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * action) {
                                                             
                                                         }];
    
    [alert addAction:goBackAction];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
