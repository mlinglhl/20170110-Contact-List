//
//  InputCollector.m
//  20170110 Contact List
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector
+(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    char input[255];
    fgets(input, 255, stdin);
    NSString *inputStringWithBreak = [NSString stringWithCString:input encoding: (NSUTF8StringEncoding)];
    NSCharacterSet *inputCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [inputStringWithBreak stringByTrimmingCharactersInSet:inputCharacterSet];
}
@end
