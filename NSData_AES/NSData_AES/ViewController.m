//
//  ViewController.m
//  NSData_AES
//
//  Created by 陈舟为 on 2017/3/20.
//  Copyright © 2017年 DaveChen. All rights reserved.
//

#import "ViewController.h"

#import "Security.h"


#define SECURITYDATA @"XB97BAC7555CA5811/B3CBC30648F41E0XB/34D472E339D415"

#define KEY  @"XB97BAC7555CA5811B3CBC30648F41E0" //key，可自行修改
#define IV   @"XB34D472E339D415" //偏移量,可自行修改

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //128加密
    [Security encryptAESData128:SECURITYDATA withKey:KEY withIv:IV];
    
    //128解密
    [Security decryptAESData128:SECURITYDATA withKey:KEY withIv:IV];
    
    //256加密
    [Security encryptAESData128:SECURITYDATA withKey:KEY withIv:IV];
    
    //256解密
    [Security decryptAESData256:SECURITYDATA withKey:KEY withIv:IV];
    
    //256加密
    [Security encryptAESData256:SECURITYDATA withKey:KEY];
    
    //256解密
    [Security decryptAESData256:SECURITYDATA withKey:KEY];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
