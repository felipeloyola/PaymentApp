//
//  CardIssuer.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/17/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CardIssuer : NSObject

-(instancetype) initWithCardTypeId:(NSString *)cardTypeId name:(NSString *)name secureThumbnail:(NSURL *)secureThumbnail processingMode:(NSString *)processingMode merchantAccountId:(NSString *)merchantAccountId;

@property (nonatomic, strong) NSString *cardTypeId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSURL *secureThumbnail;
@property (nonatomic, strong) NSString *processingMode;
@property (nonatomic, strong) NSString *merchantAccountId;

@end
