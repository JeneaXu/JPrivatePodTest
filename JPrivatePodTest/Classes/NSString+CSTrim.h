//
//  NSString+CSTrim.h
//  CSMBP
//
//  Created by lyh on 16/4/27.
//  Copyright © 2016年 Forever OpenSource Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CSTrim)
-(NSString *)trimCharacterSet:(NSCharacterSet *)characterSet;
-(NSString *)trimWhitespace;
-(NSString *)trimNewline;
-(NSString *)trimWhitespaceAndNewline;


-(NSString *)trimAllWhitespace;


- (BOOL)notBlank;

-(NSString *)fliterSepicalCharacter;

- (NSString *)stringByTrimmingRightCharactersInSet:(NSCharacterSet *)characterSet;

@end
