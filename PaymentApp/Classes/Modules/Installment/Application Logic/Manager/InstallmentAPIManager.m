//
//  InstallmentAPIManager.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "InstallmentAPIManager.h"
#import <AFNetworking/AFNetworking.h>
#import "Installment.h"

@implementation InstallmentAPIManager

-(void)findInstallment:(void (^)(NSArray *))completionBlock :(int) amount : (NSString*) cardId : (NSString*) bankId{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSString *url = [NSString stringWithFormat:@"https://api.mercadopago.com/v1/payment_methods/installments?public_key=444a9ef5-8a6b-429f-abdf-587639155d88&amount=%d&payment_method_id=%@&issuer.id=%@",amount,cardId,bankId];
    
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        NSMutableArray *installments = [[NSMutableArray alloc] init];
        for (NSDictionary *item in responseObject){
            for (NSDictionary *aInstallment in [item valueForKey:@"payer_costs"]){
                Installment *installment = [[Installment alloc]
                                            initWithInstallmentsNumber:[[aInstallment valueForKey:@"installments"] intValue]
                                            installmentsRecommendedMessage:[aInstallment valueForKey:@"recommended_message"]];
                [installments addObject:installment];
            }
        }

        if (completionBlock){
            completionBlock(installments);
        }
        
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
