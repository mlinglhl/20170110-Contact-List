//
//  ContactList.m
//  20170110 Contact List
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
@synthesize contactList;

- (instancetype)init
{
    self = [super init];
    if (self) {
            contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contactList addObject:newContact];
}
@end
