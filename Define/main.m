//
//  main.m
//  Define
//
//  Created by Shalom Friss on 5/1/17.
//  Copyright © 2017 Shalom Friss. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if(argc < 2)
        {
            printf("Usage: define <word>");
            return -1;
        }
        
        
        NSString * word = [NSString stringWithCString: argv[1] encoding: NSUTF8StringEncoding];
        CFStringRef def = DCSCopyTextDefinition(NULL, (__bridge CFStringRef)word, CFRangeMake(0, [word length]));
        NSString * output = [NSString stringWithFormat: @"%@\n", (__bridge NSString *)def];
        printf("%s", [output UTF8String]);
                    
    }
    return 0;
}
