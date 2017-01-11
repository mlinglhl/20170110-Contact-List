//
//  Contact.m
//  20170110 Contact List
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "Contact.h"

@implementation Contact
@synthesize phone;


- (instancetype)initWithName:(NSString*)name email:(NSString*)email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        NSMutableDictionary *phone = [[NSMutableDictionary alloc] init];
    }
    return self;
}

@end
