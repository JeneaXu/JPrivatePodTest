//
//  NSString+CSTrim.m
//  CSMBP
//
//  Created by lyh on 16/4/27.
//  Copyright © 2016年 Forever OpenSource Software Inc. All rights reserved.
//

#import "NSString+CSTrim.h"

@implementation NSString (CSTrim)

-(NSString *)trimCharacterSet:(NSCharacterSet *)characterSet {
    return [self stringByTrimmingCharactersInSet:characterSet];
}

-(NSString *)trimWhitespace {
    return [self trimCharacterSet:[NSCharacterSet whitespaceCharacterSet]]; //去掉前后空格
}

-(NSString *)trimNewline {
    return [self trimCharacterSet:[NSCharacterSet newlineCharacterSet]]; //去掉前后回车符
}

-(NSString *)trimWhitespaceAndNewline {
    return [self trimCharacterSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)trimAllWhitespace {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

- (BOOL)notBlank{
    return (self.trimWhitespaceAndNewline.length > 0);
}


-(NSString *)fliterSepicalCharacter {
    NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern: @"[^a-zA-Z\u4E00-\u9FA5]"  options:0 error:nil];
    
    
    NSString* result = [regex stringByReplacingMatchesInString:self
                        
                                                       options: 0
                        
                                                         range:NSMakeRange( 0 , self.length)
                        
                                                  withTemplate: @"" ];
    return result;
    
}

- (NSString *)stringByTrimmingRightCharactersInSet:(NSCharacterSet *)characterSet {
    NSUInteger location = 0;
    NSUInteger length = [self length];
    unichar charBuffer[length];
    [self getCharacters:charBuffer];
    
    for (length = [self length]; length > 0; length--) {
        if (![characterSet characterIsMember:charBuffer[length - 1]]) {
            break;
        }
    }
    return [self substringWithRange:NSMakeRange(location, length - location)];
}

@end
