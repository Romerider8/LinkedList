//
//  LLN.h
//  LinkedListProj
//
//  Created by Nate Schreiner on 8/28/17.
//  Copyright © 2017 Nate Schreiner. All rights reserved.
//

#ifndef LLN_h
#define LLN_h

#import <Foundation/Foundation.h>

@interface LLN : NSObject {
    
    NSString * data;
    LLN * next;
}

-(id) init:(NSString *)s next:(LLN*)n; //init:next: is the name of this method

-(void) print;

-(LLN *) reverse; //return the head of the reversed list
-(LLN *) remove:(NSString *)s;
-(NSString *) getData;


@end

#endif /* LLN_h */
