//
//  PaymentDelegate.h
//  Payments App
//
//  Created by Endeavour2 on 6/30/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#ifndef PaymentDelegate_h
#define PaymentDelegate_h
@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount: (NSInteger) amount;

- (BOOL) canProcessPayment;

@end

#endif /* PaymentDelegate_h */
