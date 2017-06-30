//
//  InputHandler.m
//  Payments App
//
//  Created by Endeavour2 on 6/30/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
//implementation class method - getInput:
+(NSString *)getUserInput {
    
    char inputChars[255];
    //    printf("Please enter your answer: ");
    fgets(inputChars, 255, stdin);
    NSString *parsedString = [[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return parsedString;
    
}


@end
