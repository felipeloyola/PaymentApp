//
//  BankAPIManager.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/19/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAPIManager : NSObject

-(void)findBanks:(void (^)(NSArray *))completionBlock :(NSString*) cardId;

@end
