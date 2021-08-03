//
//  AppLogManager.m
//  applog
//
//  Created by 李培根 on 2021/8/2.
//

#import "AppLogManager.h"

@implementation AppLogManager

+ (instancetype)shareManger {
    static AppLogManager * _manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[AppLogManager alloc] init];
    });
    return _manager;
}

@end
