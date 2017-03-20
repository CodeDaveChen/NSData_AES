//
//  NSData+AES.h
//  NSData_AES
//
//  Created by 陈舟为 on 2017/3/20.
//  Copyright © 2017年 DaveChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES)

- (NSData *)AES128EncryptWithKey:(NSString *)key gIv:(NSString *)iv;   //AES128加密

- (NSData *)AES128DecryptWithKey:(NSString *)key gIv:(NSString *)iv;   //AES128解密

- (NSData *) AES256EncryptWithKey:(NSString *)key withIv:(NSString *)iv;    //AES256加密

- (NSData *) AES256DecryptWithKey:(NSString *)key withIv:(NSString *)iv;    //AES256解密


- (NSData *)AES256_encrypt:(NSString *)key;

- (NSData *)AES256_decrypt:(NSString *)key;

@end
