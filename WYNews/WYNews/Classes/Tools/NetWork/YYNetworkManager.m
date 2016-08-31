//
//  YYNetworkManager.m
//  WYNews
//
//  Created by 大姚 on 16/8/31.
//  Copyright © 2016年 王姚. All rights reserved.
//

#import "YYNetworkManager.h"

@implementation YYNetworkManager

+(instancetype)sharedManager {
    
    static YYNetworkManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *baseURL = [NSURL URLWithString:@"http://c.m.163.com/nc/article/"];
        instance = [[self alloc] initWithBaseURL:baseURL];
    });
    
    return instance;
}

@end
