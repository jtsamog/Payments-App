//
//  main.m
//  Payments App
//
//  Created by Endeavour2 on 6/29/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int r = 100 + arc4random_uniform(900) ;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%u Please select your payment method: 1: Amazon, 2: Paypal, 3: Stripe, 4: Apple", r );
        
        NSString *parsedString = [InputHandler getUserInput];
        
        int choice = [parsedString intValue];
        
        NSLog(@"%d",choice);
        
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
        
//        [paymentGateway processPaymentAmount:r];
        id <PaymentDelegate>delegateForSwitch;
        
        switch (choice) {
            case 1:
                delegateForSwitch = [[AmazonPaymentService alloc] init];
                break;
            case 2:
                delegateForSwitch = [[StripePaymentService alloc]init];
                break;
                
            case 3:
                delegateForSwitch = [[PaypalPaymentService alloc] init];
                break;
            case 4:
                delegateForSwitch = [[ApplePaymentService alloc] init];
                break;
                
            default:
                break;
        }
        
        paymentGateway.delegate = delegateForSwitch;
        [paymentGateway processPaymentAmount:r];
        
        
    }
    return 0;
}
