//
//  Security.m
//  NSData_AES
//
//  Created by 陈舟为 on 2017/3/20.
//  Copyright © 2017年 DaveChen. All rights reserved.
//

#import "Security.h"

#import "NSData+AES.h"

#import "GTMBase64.h"

@implementation Security

#pragma mark - base64
+ (NSString*)encodeBase64Data:(NSData *)data {
    data = [GTMBase64 encodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}

#pragma mark - AES加密 128
+ (NSString*)encryptAESData128:(NSString*)string withKey:(NSString *)key withIv:(NSString *)iv{
    
    //将NSString转化为NSData
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    //使用密码对NSData进行加密
    NSData *encryptedData = [data AES128EncryptWithKey:key gIv:iv];
    
    //返回进行base64进行转码的加密字符串
    return [self encodeBase64Data:encryptedData];
    
    
}

#pragma mark - AES解密 128
+ (NSString*)decryptAESData128:(NSString*)string withKey:(NSString *)key withIv:(NSString *)iv{
    
    //base64解密
    NSData *decodeBase64Data=[GTMBase64 decodeString:string];
    //使用密码对data进行解密
    NSData *decryData = [decodeBase64Data AES128DecryptWithKey:key gIv:iv];
    //将解了密码的NSData转化为NSString
    NSString *str = [[NSString alloc] initWithData:decryData encoding:NSUTF8StringEncoding];
    return str;

    
}

#pragma mark - AES加密 256
+ (NSString*)encryptAESData256:(NSString*)string withKey:(NSString *)key withIv:(NSString *)iv{
    
    //将NSString转化为NSData
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    //使用密码对NSData进行加密
    NSData *encryptedData = [data AES256EncryptWithKey:key withIv:iv];
    //返回进行base64进行转码的加密字符串
    return [self encodeBase64Data:encryptedData];
    
}

#pragma mark - AES解密 256
+ (NSString*)decryptAESData256:(NSString*)string withKey:(NSString *)key withIv:(NSString *)iv{
    
    //base64解密
    NSData *decodeBase64Data=[GTMBase64 decodeString:string];
    //使用密码对data进行解密
    NSData *decryData = [decodeBase64Data AES256DecryptWithKey:key withIv:iv];
    //将解了密码的NSData转化为nsstring
    NSString *str = [[NSString alloc] initWithData:decryData encoding:NSUTF8StringEncoding];
    return str;

    
}

#pragma mark - AES加密 256 no IV
+ (NSString*)encryptAESData256:(NSString*)string withKey:(NSString *)key{
    
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
   
    NSData *encryptedData = [data AES256_encrypt:key];
    
    return [self encodeBase64Data:encryptedData];
}

#pragma mark - AES解密 256 no IV
+ (NSString*)decryptAESData256:(NSString*)string withKey:(NSString *)key{
    
    NSData *decodeBase64Data=[GTMBase64 decodeString:string];
    
    NSData *decryData = [decodeBase64Data AES256_decrypt:key];
 
    NSString *str = [[NSString alloc] initWithData:decryData encoding:NSUTF8StringEncoding];
    return str;

    
}

@end
