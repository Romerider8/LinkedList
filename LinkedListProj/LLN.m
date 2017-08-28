//
//  LLN.m
//  LinkedListProj
//
//  Created by Nate Schreiner on 8/28/17.
//  Copyright © 2017 Nate Schreiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLN.h"

@implementation LLN

-(id) init:(NSString *)s next:(LLN *)n {
    
    data = s;
    next = n;
    return self;
}

-(void) print {
    
    printf ("%s\n",[data UTF8String]);
    [next print]; //methods called on a NULL object do not fire
    
    
}

-(LLN *) reverse {
    
    if (!next) return self;
    LLN *nh = [next reverse];
    next->next = self;
    next = NULL;
    return nh;
    
}

-(NSString *) getData {
    return data;
}

-(LLN *) remove:(NSString *)s {
    if(next) next = [next remove:s];
    if([[self getData] isEqualToString:s]) {
        NSLog(@"%@", [self getData]);
        LLN * temp = next;
        next = NULL;
        //DON'T WE NEED TO DELETE OURSELVES HERE???
        return temp;
    }
    else
        return self;
}

@end
