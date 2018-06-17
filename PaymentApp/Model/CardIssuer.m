//
//  CardIssuer.m
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import "CardIssuer.h"

@implementation CardIssuer

-(instancetype) initWithCardTypeId:(NSString *)cardTypeId name:(NSString *)name secureThumbnail:(NSURL *)secureThumbnail processingMode:(NSString *)processingMode merchantAccountId:(NSString *)merchantAccountId {
    
    self = [super init];
    
    if (self) {
        
        self.cardTypeId = cardTypeId;
        self.name = name;
        self.secureThumbnail = secureThumbnail;
        self.processingMode = processingMode;
        self.merchantAccountId = merchantAccountId;
        
    }
    return self;
}

@end
