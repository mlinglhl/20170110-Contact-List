//
//  Contact.h
//  20170110 Contact List
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;
@property NSMutableDictionary *phone;

- (instancetype)initWithName:(NSString*)name email:(NSString*)email;

@end
