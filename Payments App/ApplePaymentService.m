//
//  ApplePaymentService.m
//  Payments App
//
//  Created by Endeavour2 on 6/30/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void) processPaymentAmount: (NSInteger) amount{
    NSLog(@"Apple processed $%ld amount", amount);
}

- (BOOL) canProcessPayment{
    NSInteger randNo = arc4random_uniform(2);
    return randNo = YES | NO;
}

@end
