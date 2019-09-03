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

/**
 过滤掉所有空格符
 */
-(NSString *)trimAllWhitespace;

/**
 * 字符串是否非空
 */
- (BOOL)notBlank;

-(NSString *)fliterSepicalCharacter;

/**
 对右端过滤  比如去除右端空格
 */
- (NSString *)stringByTrimmingRightCharactersInSet:(NSCharacterSet *)characterSet;

@end
