//
//  MethodAPIManager.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "MethodAPIManager.h"
#import <AFNetworking/AFNetworking.h>
#import "PaymentMethod.h"

@implementation MethodAPIManager

-(void)findMethods:(void (^)(NSArray *methods))completionBlock{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://api.mercadopago.com/v1/payment_methods?public_key=444a9ef5-8a6b-429f-abdf-587639155d88" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        NSMutableArray *methods = [[NSMutableArray alloc] init];
        
        for (NSDictionary *aCard  in responseObject){
            PaymentMethod *method = [[PaymentMethod alloc]
                                     initWithMethodId:[aCard valueForKey:@"id"]
                                     name:[aCard valueForKey:@"name"]
                                     paymentTypeId:[aCard valueForKey:@"payment_type_id"]
                                     status:[aCard valueForKey:@"status"]
                                     secureThumbnail:[NSURL URLWithString:[aCard valueForKey:@"secure_thumbnail"]] 
                                     minAllowedAmount:[[aCard valueForKey:@"min_allowed_amount"] intValue]
                                     maxAllowedAmount:[[aCard valueForKey:@"max_allowed_amount"] intValue]];
            [methods addObject:method];
        }
        if (completionBlock){
            completionBlock(methods);
        }
        
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}



@end
