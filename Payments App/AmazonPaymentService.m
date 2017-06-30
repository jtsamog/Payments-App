//
//  AmazonPaymentService.m
//  Payments App
//
//  Created by Endeavour2 on 6/30/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void) processPaymentAmount: (NSInteger) amount{
    NSLog(@"Amazon processed $%ld amount", amount);
}

- (BOOL) canProcessPayment{
    NSInteger rand = arc4random_uniform(2);
    return rand = YES | NO;
}
@end
