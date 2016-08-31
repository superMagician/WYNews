//
//  YYNetworkManager.h
//  WYNews
//
//  Created by 大姚 on 16/8/31.
//  Copyright © 2016年 王姚. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
/**
 *  网络管理器，统一管理所有网络
 */
@interface YYNetworkManager : AFHTTPSessionManager

+ (instancetype)sharedManager;

@end
