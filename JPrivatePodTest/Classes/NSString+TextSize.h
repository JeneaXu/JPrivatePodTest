//
//  NSString+TextSize.h
//  CSMBP
//
//  Created by zhangfangzhu on 16/4/6.
//  Copyright © 2016年 Forever OpenSource Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (TextSize)

- (CGSize)sizeWithFont:(UIFont *)font;

- (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode;

- (CGSize)sizeWithFont:(UIFont *)font forWidth:(CGFloat)width lineBreakMode:(NSLineBreakMode)lineBreakMode;

- (CGSize)multiLineTextSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size;


@end
