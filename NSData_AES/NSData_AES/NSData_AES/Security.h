//
//  Security.h
//  NSData_AES
//
//  Created by 陈舟为 on 2017/3/20.
//  Copyright © 2017年 DaveChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Security : NSObject

#pragma mark - AES加密 128
+ (NSString*)encryptAESData128:(NSString*)string withKey:(NSString *)key withIv:(NSString *)iv;

#pragma mark - AES解密 128
+ (NSString*)decryptAESData128:(NSString*)string withKey:(NSString *)key withIv:(NSString *)iv;

#pragma mark - AES加密 256
+ (NSString*)encryptAESData256:(NSString*)string withKey:(NSString *)key withIv:(NSString *)iv;

#pragma mark - AES解密 256
+ (NSString*)decryptAESData256:(NSString*)string withKey:(NSString *)key withIv:(NSString *)iv;


#pragma mark - AES加密 256 no IV
+ (NSString*)encryptAESData256:(NSString*)string withKey:(NSString *)key;

#pragma mark - AES解密 256 no IV
+ (NSString*)decryptAESData256:(NSString*)string withKey:(NSString *)key;

@end
