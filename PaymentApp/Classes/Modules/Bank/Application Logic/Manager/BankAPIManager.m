//
//  BankAPIManager.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "BankAPIManager.h"
#import <AFNetworking/AFNetworking.h>
#import "CardIssuer.h"

@implementation BankAPIManager


-(void)findBanks:(void (^)(NSArray *))completionBlock :(NSString*) cardId{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSString *url = [NSString stringWithFormat:@"https://api.mercadopago.com/v1/payment_methods/card_issuers?public_key=444a9ef5-8a6b-429f-abdf-587639155d88&payment_method_id=%@",cardId];
    
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        NSMutableArray *banks = [[NSMutableArray alloc] init];
        
        for (NSDictionary *aBank in responseObject){
            CardIssuer *bank = [[CardIssuer alloc]
                                        initWithCardTypeId:[aBank valueForKey:@"id"]
                                        name:[aBank valueForKey:@"name"]
                                        secureThumbnail:[NSURL URLWithString:[aBank valueForKey:@"secure_thumbnail"]]
                                        processingMode:[aBank valueForKey:@"processing_mode"]
                                        merchantAccountId:[aBank valueForKey:@"merchant_account_id"]];
            [banks addObject:bank];
        }
        if (completionBlock){
            completionBlock(banks);
        }
        
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}


@end
