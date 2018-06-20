//
//  MethodAPIManager.h
//  PaymentApp
//
//  Created by Felipe Loyola on 6/18/18.
//  Copyright © 2018 negon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MethodAPIManager : NSObject

-(void)findMethods:(void (^)(NSArray *methods))completionBlock;

@end
