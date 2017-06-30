//
//  PaymentGateway.m
//  Payments App
//
//  Created by Endeavour2 on 6/30/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void) processPaymentAmount: (NSInteger) amount {
    if ([self.delegate canProcessPayment]) {
        
        [self.delegate processPaymentAmount:amount];
    } else{
        NSLog(@"Sorry, payment cannot be processed");
    }
}
@end
