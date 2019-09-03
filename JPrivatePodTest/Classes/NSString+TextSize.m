//
//  NSString+TextSize.m
//  CSMBP
//
//  Created by zhangfangzhu on 16/4/6.
//  Copyright © 2016年 Forever OpenSource Software Inc. All rights reserved.
//

#import "NSString+TextSize.h"

@implementation NSString (TextSize)

- (CGSize)sizeWithFont:(UIFont *)font {
    return [self sizeWithAttributes:@{NSFontAttributeName:font}];
}


- (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode {
    NSMutableParagraphStyle *paragraphStytle = [[NSMutableParagraphStyle alloc]init];
    paragraphStytle.lineBreakMode = lineBreakMode;
    NSDictionary *attributes = @{NSFontAttributeName: font,NSParagraphStyleAttributeName: paragraphStytle};
    CGRect rect = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
    
   return rect.size;
}

- (CGSize)sizeWithFont:(UIFont *)font forWidth:(CGFloat)width lineBreakMode:(NSLineBreakMode)lineBreakMode {
    return [self sizeWithFont:font constrainedToSize:CGSizeMake(width, CGFLOAT_MAX) lineBreakMode:lineBreakMode];
}

- (CGSize)multiLineTextSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size{
    NSDictionary *attributes = @{NSFontAttributeName: font};
    CGRect rect = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
    return rect.size;
}

@end
