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


@end
