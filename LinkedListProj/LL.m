//
//  LL.m
//  LinkedListProj
//
//  Created by Nate Schreiner on 8/28/17.
//  Copyright © 2017 Nate Schreiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LL.h"
#import "LLN.h"

@implementation LL

-(id) init {
    head = NULL;
    return self;  //"self" means "this"
}

-(void) print {
    if (head) [head print];
    printf ("\n");
}

-(void) add:(NSString *)s {
    head = [[LLN alloc] init:s next:head]; //head = new LLN (s,head);
}

-(void) reverse {
    if (head) head = [head reverse];
}

-(void) remove:(NSString *)s {
    head = [head remove:s];
}
@end
