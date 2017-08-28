//
//  main.m
//  LinkedListProj
//
//  Created by Nate Schreiner on 8/28/17.
//  Copyright © 2017 Nate Schreiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LL.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        NSString *add = @"a";
        NSString *rem = @"r";
        NSString *print = @"p";
        NSString *ex = @"e";
        int index = 1;
        BOOL looper = YES;
        LL *MyList = [[LL alloc] init];
    
    
        
//        printf("%s\n", [string UTF8String]);
//        printf("%s\n", [first_character UTF8String]);
        
        while(looper == YES) {
            printf("Enter in your string: ");
            //  READ INPUT AND FORMAT TO NSSTRING FROM ARRAY OF CHAR'S
            char *line;
            size_t lsz = 100;
            line = malloc (lsz); //line = new char[lsz];
            getline (&line,&lsz,stdin);
            line[strlen(line)-1] = 0;  //REMOVES THE NEWLINE SENT WITH USER INPUT
            NSString *string = [NSString stringWithFormat:@"%s", line];
            
            //GRAB THE FIRST CHARACTER OF USER INPUT
            NSString *first_character = [NSString stringWithFormat:@"%c", [string characterAtIndex:index-1]];
            
            if([first_character caseInsensitiveCompare:add] == NSOrderedSame) {
                NSString *bookTitle = [string substringWithRange: NSMakeRange(4, string.length - 4)]; //now 4 was 6
                NSString *command = @"Adding: ";
//                NSLog(@"%@", bookTitle);  //GOOD DEBUG:  PRINTS BOOK TITLE
//                NSLog(@"%@", [NSString stringWithFormat:@"%@ %@", command, bookTitle]);
                //NSLog(@"%@", command);
                [MyList add:bookTitle];
                //  string = removeQuotes(string);
                printf("going to print MyList\n");
                [MyList print];
            }
            
            
            
            
        }
        
     
        
        
    }
    return 0;
}
