//
//  AppLogManager.h
//  applog
//
//  Created by 李培根 on 2021/8/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppLogManager : NSObject

@property(nonatomic, copy) NSString *baseUrl;

+ (instancetype)shareManger;

@end

NS_ASSUME_NONNULL_END
