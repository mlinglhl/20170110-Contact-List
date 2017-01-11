//
//  ContactList.h
//  20170110 Contact List
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray<Contact*> *contactList;

-(void)addContact:(Contact *)newContact;

@end
