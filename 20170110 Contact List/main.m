//
//  main.m
//  20170110 Contact List
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    ContactList *list1 = [[ContactList alloc] init];
    BOOL listOn = YES;
    while (listOn == YES)
    {
        NSString *userInput = [InputCollector inputForPrompt:@"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - Show a specific contact\nfind - Search the contact list for a name\nquit - Exit Application"];
        
        if ([userInput isEqualToString:@"quit"]) {
            listOn = NO;
            continue;
        }
        else if ([userInput isEqualToString:@"new"]) {
            NSString *contactName = [InputCollector inputForPrompt:@"What is the name?"];
            NSString *contactEmail = [InputCollector inputForPrompt:@"What is the email?"];
            BOOL repeat = NO;
            for (Contact *contact in list1.contactList) {
                if (contactEmail == contact.email) {
                    repeat = YES;
                }
            }
            if (repeat == NO) {
                Contact *contactFull = [[Contact alloc] initWithName:contactName email:contactEmail];
                [list1 addContact:contactFull];
            }
            else {
                NSLog(@"Duplicate entry");
            }
        }
        else if ([userInput isEqualToString:@"list"]) {
            int i = 0;
            for (Contact *contact in list1.contactList) {
                NSLog(@"%i: name: %@ (%@)\n", i, contact.name, contact.email);
                i++;
            }
        }
        else if ([userInput containsString:@"show"]) {
            if ([userInput containsString:@" "]){
                NSString *selection = [userInput stringByReplacingOccurrencesOfString:@"show " withString:@""];
                NSInteger selectionNumber = [selection intValue];
                if (list1.contactList.count > selectionNumber) {
                    NSLog(@"Contact %li: %@ (%@)", (long)selectionNumber, list1.contactList[selectionNumber].name, list1.contactList[selectionNumber].email);
                }
                else {
                    NSLog(@"Invalid number");
                }
            }
            else {
                NSLog(@"Please enter a number with show.");
            }
        }
        else if ([userInput containsString:@"find"]) {
            if ([userInput containsString:@" "]) {
                NSString *searchString = [userInput stringByReplacingOccurrencesOfString:@"find " withString:@""];
                BOOL found = NO;
                for (Contact *contact in list1.contactList) {
                    if ([contact.name containsString:searchString]) {
                        NSLog(@"Contact: %@ (%@)", contact.name, contact.email);
                        found = YES;
                    }
                }
                if (found == NO) {
                    NSLog(@"No contacts found.");
                }
            }
            else {
                NSLog(@"Please enter a name with find.");
            }
        }
    }
    
    return 0;
}
