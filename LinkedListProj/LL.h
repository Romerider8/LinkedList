//
//  LL.h
//  LinkedListProj
//
//  Created by Nate Schreiner on 8/28/17.
//  Copyright © 2017 Nate Schreiner. All rights reserved.
//


#ifndef LL_h
#define LL_h

#import <Foundation/Foundation.h>
#include "LLN.h"

@class LLN;
@interface LL : NSObject { //LL inherits from (or is a special kind of) NSObject
    LLN *head; //data members of the class
}

-(id) init;  //method definitions for the class
-(void) print;  //id is a generic pointer (void *)  the - sign says its an object method
-(void) add:(NSString *)s; // a + sign would be a class method
-(void) reverse; //reverses the linked list
-(void) remove:(NSString *)s;



@end //ends interface

#endif /* LL_h */

