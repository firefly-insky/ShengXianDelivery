//
//  SONAKeyChain.h
//  sona
//
//  Created by FJF on 16/1/21.
//  Copyright © 2016年 生鲜商品配送. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>
@interface KeyChain : NSObject
// save username and password to keychain
+ (void)save:(NSString *)service data:(id)data;

// take out username and passwore from keychain
+ (id)load:(NSString *)service;

// delete username and password from keychain
+ (void)delete:(NSString *)service;

@end
