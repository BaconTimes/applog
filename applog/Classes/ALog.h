//
//  ALog.h
//  applog
//
//  Created by 李培根 on 2021/8/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern void ALogMessageF(const char *filename, int lineNumber, const char *functionName, NSString *domain, int level, NSString *format, ...) NS_FORMAT_FUNCTION(6,7);

@interface ALog : NSObject

+ (void)log:(NSString *)format,...NS_REQUIRES_NIL_TERMINATION;

@end

NS_ASSUME_NONNULL_END

#define ALog(...)                      ALogMessageF(__FILE__, __LINE__, __FUNCTION__, @"ALog", 0, __VA_ARGS__)



