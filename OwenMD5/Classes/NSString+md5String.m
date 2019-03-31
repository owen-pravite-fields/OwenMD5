//
//  NSString+md5String.m
//  School2.0
//
//  Created by jxp on 16/3/17.
//  Copyright © 2016年 jxp. All rights reserved.
//

#import "NSString+md5String.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString(md5String)

- (NSString *) md5
{
    const char *cStr = [self UTF8String];
    unsigned char result[16];
    CC_MD5( cStr, (unsigned int) strlen(cStr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];      
}

@end
