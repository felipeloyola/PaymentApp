//
//  InstallmentAPIManager.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/20/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InstallmentAPIManager : NSObject

-(void)findInstallment:(void (^)(NSArray *))completionBlock :(int) amount : (NSString*) cardId : (NSString*) bankId;

@end
